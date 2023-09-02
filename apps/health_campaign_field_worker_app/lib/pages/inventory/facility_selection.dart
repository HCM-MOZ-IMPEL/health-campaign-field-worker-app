import 'package:collection/collection.dart';
import 'package:digit_components/digit_components.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import '../../blocs/localization/app_localization.dart';
import '../../utils/i18_key_constants.dart' as i18;

import '../../models/entities/facility.dart';
import '../../router/app_router.dart';
import '../../widgets/header/back_navigation_help_header.dart';

class FacilitySelectionPage extends StatelessWidget {
  final List<FacilityModel> facilities;

  const FacilitySelectionPage({
    Key? key,
    required this.facilities,
  }) : super(key: key);

  static const _facilityName = 'facilityKey';
  static const _selectedFacility = 'selectedFacilityKey';

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);

    return ReactiveFormBuilder(
      form: _form,
      builder: (context, form, child) {
        return Scaffold(
          body: ReactiveFormConsumer(
            builder: (context, form, _) {
              final filteredFacilities = facilities.where((element) {
                final query =
                    (form.control(_facilityName).value as String?)?.trim();
                if (query == null || query.isEmpty) return true;
                if (element.id.toLowerCase().contains(query.toLowerCase())) {
                  return true;
                }
                final name = element.name ?? "";
                if (name.toLowerCase().contains(query.toLowerCase())) {
                  return true;
                }

                return false;
              });

              return ScrollableContent(
                header: const BackNavigationHelpHeaderWidget(),
                slivers: [
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: DigitTextFormField(
                        label: localizations.translate(
                          i18.stockReconciliationDetails.facilitySearchText,
                        ),
                        formControlName: _facilityName,
                      ),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final facility = filteredFacilities.elementAt(index);

                        return InkWell(
                          onTap: () {
                            context.router.pop(facility);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Text('${facility.name}'),
                          ),
                        );
                      },
                      childCount: filteredFacilities.length,
                    ),
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }

  FormGroup _form() {
    return fb.group({
      _facilityName: FormControl<String>(),
      _selectedFacility: FormControl<FacilityModel>(
        validators: [Validators.required],
      ),
    });
  }
}

class FacilityValueAccessor
    extends ControlValueAccessor<FacilityModel, String> {
  final List<FacilityModel> models;

  FacilityValueAccessor(this.models);

  @override
  String? modelToViewValue(FacilityModel? modelValue) {
    return modelValue?.name;
  }

  @override
  FacilityModel? viewToModelValue(String? viewValue) {
    return models.firstWhereOrNull(
      (element) => element.name == viewValue,
    );
  }
}
