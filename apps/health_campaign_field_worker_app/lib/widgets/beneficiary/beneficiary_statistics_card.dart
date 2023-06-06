import 'package:digit_components/widgets/digit_card.dart';
import 'package:digit_components/widgets/molecules/digit_walkthrough.dart';
import 'package:flutter/material.dart';

import '../../blocs/localization/app_localization.dart';
import '../../models/beneficiary_statistics/beneficiary_statistics_model.dart';
import '../../utils/constants.dart';
import '../../utils/i18_key_constants.dart' as i18;

class BeneficiaryStatisticsCard extends StatelessWidget {
  final BeneficiaryStatisticsWrapperModel beneficiaryStatistics;
  final AppLocalizations localizations;

  const BeneficiaryStatisticsCard({
    super.key,
    required this.beneficiaryStatistics,
    required this.localizations,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return DigitCard(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 3,
            child: DigitWalkthrough(
              onSkip: () => {
                Constants.searchBeneficiaryOverlayWrapperkey.currentState
                    ?.onSelectedSkip(),
              },
              widgetHeight: 90,
              onTap: () {
                Constants.searchBeneficiaryOverlayWrapperkey.currentState
                    ?.onSelectedTap();
              },
              key: Constants.searchBeneficiaryWalkthroughWidgetStateList[0],
              description:
                  localizations.translate(i18.common.householdCountHelp),
              overlayWidget:
                  Constants.searchBeneficiaryOverlayWidgetStateList[0],
              titleAlignment: TextAlign.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    beneficiaryStatistics.beneficiaryStatisticsList.first.title,
                    style: theme.textTheme.displayMedium,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    beneficiaryStatistics
                        .beneficiaryStatisticsList.first.content,
                    style: theme.textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 3,
            child: DigitWalkthrough(
              onSkip: () => {
                Constants.searchBeneficiaryOverlayWrapperkey.currentState
                    ?.onSelectedSkip(),
              },
              widgetHeight: 90,
              onTap: () {
                Constants.searchBeneficiaryOverlayWrapperkey.currentState
                    ?.onSelectedTap();
              },
              key: Constants.searchBeneficiaryWalkthroughWidgetStateList[1],
              description: localizations.translate(i18.common.bedNetsCountHelp),
              overlayWidget:
                  Constants.searchBeneficiaryOverlayWidgetStateList[1],
              titleAlignment: TextAlign.center,
              child: Column(
                children: [
                  Text(
                    beneficiaryStatistics.beneficiaryStatisticsList.last.title,
                    style: theme.textTheme.displayMedium,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    beneficiaryStatistics
                        .beneficiaryStatisticsList.last.content,
                    style: theme.textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
