import 'package:collection/collection.dart';
import 'package:digit_components/digit_components.dart';
import 'package:digit_components/models/digit_table_model.dart';
import 'package:digit_components/utils/date_utils.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../blocs/search_households/search_households.dart';
import '../../utils/i18_key_constants.dart' as i18;
import '../localized.dart';
import '../showcase/config/showcase_constants.dart';
import 'beneficiary_card.dart';

class ViewBeneficiaryCard extends LocalizedStatefulWidget {
  final bool hasShowcase;
  final HouseholdMemberWrapper householdMember;
  final VoidCallback? onOpenPressed;

  const ViewBeneficiaryCard({
    Key? key,
    this.hasShowcase = false,
    super.appLocalizations,
    required this.householdMember,
    this.onOpenPressed,
  }) : super(key: key);

  @override
  State<ViewBeneficiaryCard> createState() => _ViewBeneficiaryCardState();
}

class _ViewBeneficiaryCardState extends LocalizedState<ViewBeneficiaryCard> {
  late HouseholdMemberWrapper householdMember;

  late String member;

  @override
  void initState() {
    householdMember = widget.householdMember;
    member = householdMember.household.memberCount! > 1
        ? i18.memberCard.members
        : i18.memberCard.member;
    super.initState();
  }

  @override
  void didUpdateWidget(covariant ViewBeneficiaryCard oldWidget) {
    householdMember = widget.householdMember;
    member = householdMember.household.memberCount! > 1
        ? i18.memberCard.members
        : i18.memberCard.member;
    super.didUpdateWidget(oldWidget);
  }

  bool _isCardExpanded = false;

  bool get isCardExpanded => _isCardExpanded;

  set isCardExpanded(bool value) => setState(() => _isCardExpanded = value);

  @override
  Widget build(BuildContext context) {
    return DigitCard(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.7,
                child: BeneficiaryCard(
                  hasShowcase: widget.hasShowcase,
                  description: [
                    householdMember.household.address?.doorNo,
                    householdMember.household.address?.landmark,
                    householdMember.household.address?.city,
                  ].whereNotNull().take(2).join(' '),
                  subtitle:
                      '${householdMember.household.memberCount ?? 1} ${localizations.translate(member)}',
                  status: householdMember.task?.status != null
                      ? i18
                          .householdOverView.householdOverViewDeliveredIconLabel
                      : i18.householdOverView
                          .householdOverViewNotDeliveredIconLabel,
                  title: [
                    householdMember.headOfHousehold.name?.givenName,
                    householdMember.headOfHousehold.name?.familyName,
                  ].whereNotNull().join(' '),
                ),
              ),
              Flexible(
                child: () {
                  final child = DigitOutLineButton(
                    label: localizations
                        .translate(i18.searchBeneficiary.iconLabel),
                    onPressed: widget.onOpenPressed,
                  );

                  return !widget.hasShowcase
                      ? child
                      : searchBeneficiariesShowcaseData.open
                          .buildWith(child: child);
                }(),
              ),
            ],
          ),
          Offstage(
            offstage: !isCardExpanded,
            child: DigitTable(
              headerList: [
                TableHeader(
                  'Beneficiário',
                  cellKey: 'beneficiary',
                ),
                TableHeader(
                  'Idade',
                  cellKey: 'age',
                ),
                TableHeader(
                  'Género',
                  cellKey: 'gender',
                ),
              ],
              tableData: householdMember.members
                  .map(
                    (e) => TableDataRow(
                      [
                        TableData(
                          [
                            e.name?.givenName,
                            e.name?.familyName,
                          ].whereNotNull().join(' '),
                          cellKey: 'beneficiary',
                        ),
                        TableData(
                          e.dateOfBirth == null
                              ? ''
                              : '${DigitDateUtils.calculateAge(
                                  DigitDateUtils.getFormattedDateToDateTime(
                                        e.dateOfBirth!,
                                      ) ??
                                      DateTime.now(),
                                ).years}',
                          cellKey: 'age',
                        ),
                        TableData(
                          localizations
                              .translate(e.gender?.name.toUpperCase() ?? ''),
                          cellKey: 'gender',
                        ),
                      ],
                    ),
                  )
                  .toList(),
              leftColumnWidth: 130,
              rightColumnWidth: 45 * 6,
              height: householdMember.members.length <= 5
                  ? (householdMember.members.length + 1) * 57
                  : 6 * 57,
            ),
          ),
          Container(
            height: 24,
            margin: const EdgeInsets.all(4),
            child: IconButton(
              padding: EdgeInsets.zero,
              icon: Icon(
                isCardExpanded
                    ? Icons.keyboard_arrow_up
                    : Icons.keyboard_arrow_down,
                size: 16,
              ),
              onPressed: () => isCardExpanded = !isCardExpanded,
            ),
          ),
        ],
      ),
    );
  }
}
