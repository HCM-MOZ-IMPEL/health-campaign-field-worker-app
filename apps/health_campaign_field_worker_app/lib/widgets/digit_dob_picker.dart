import 'package:digit_components/utils/date_utils.dart';
import 'package:digit_components/widgets/atoms/digit_date_form_picker.dart';
import 'package:digit_components/widgets/atoms/digit_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'showcase/config/showcase_constants.dart';
import 'package:reactive_forms/reactive_forms.dart';

class DigitDobPicker extends StatelessWidget {
  final String datePickerFormControl;

  final bool isVerified;

  final ControlValueAccessor? valueAccessor;
  final String datePickerLabel;
  final String ageFieldLabel;
  final String separatorLabel;

  const DigitDobPicker({
    super.key,
    required this.datePickerFormControl,
    this.isVerified = false,
    this.valueAccessor,
    required this.datePickerLabel,
    required this.ageFieldLabel,
    required this.separatorLabel,
  });

  static final RegExp numberRegex = RegExp(r'^-?[0-9]+$');

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Container(
        padding: const EdgeInsets.only(left: 8, right: 8, bottom: 16),
        decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            color: Colors.grey,
            style: BorderStyle.solid,
            width: 1.0,
          ),
        ),
        child: Column(
          children: [
            individualDetailsShowcaseData.age.buildWith(
              child: DigitTextFormField(
                maxLength: 3,
                valueAccessor: DobValueAccessorYearsString(DobValueAccessor()),
                formControlName: datePickerFormControl,
                label: ageFieldLabel,
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                readOnly: isVerified,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'^[1-9][0-9]*')),
                ],
                onChanged: (formControl) {
                  /// Validates that control's value must be `true`
                  Map<String, dynamic>? requiredTrue(
                    AbstractControl<dynamic> control,
                  ) {
                    if (formControl.value == null ||
                        formControl.value.toString().trim().isEmpty) {
                      return {'O campo Idade é obrigatório': true};
                    }
                    DigitDOBAge age =
                        DigitDateUtils.calculateAge(formControl.value);

                    return age.years > 150 ||
                            (age.years >= 150 && age.months > 0)
                        ? {'A idade não deve ser superior a 150 anos': true}
                        : null;
                  }

                  formControl.setValidators([requiredTrue]);
                },
              ),
            ),
            const SizedBox(height: 16),
            Text(
              separatorLabel,
              style: theme.textTheme.bodyLarge,
            ),
            individualDetailsShowcaseData.dateOfBirth.buildWith(
              child: DigitDateFormPicker(
                label: datePickerLabel,
                formControlName: datePickerFormControl,
                end: DateTime(
                  DateTime.now().year - 1,
                  1,
                  1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DobValueAccessor extends ControlValueAccessor<DateTime, DigitDOBAge> {
  @override
  DigitDOBAge? modelToViewValue(DateTime? modelValue) {
    if (modelValue == null) return null;

    return DigitDateUtils.calculateAge(modelValue);
  }

  @override
  DateTime? viewToModelValue(DigitDOBAge? viewValue) {
    if (viewValue == null) return null;
    final months = viewValue.months;
    final days = DigitDateUtils.yearsMonthsDaysToDays(
      viewValue.years,
      viewValue.months,
      viewValue.days,
    );

    final calculatedDate = DateTime.now().subtract(Duration(days: days + 1));

    return viewValue.years < 0 || months < 0 || months > 11
        ? DateTime(
            viewValue.years < 0 ? DateTime.now().year + 1 : DateTime.now().year,
            DateTime.now().month + 1,
          )
        : DateTime(
            calculatedDate.year,
            calculatedDate.month,
          );
  }
}

// A custom ControlValueAccessor to handle the view value as a string for years.
class DobValueAccessorYearsString
    extends ControlValueAccessor<DateTime, String> {
  final DobValueAccessor accessor;

  DobValueAccessorYearsString(this.accessor);
  String existingMonth = '0';
  String existingDays = '0';

  @override
  String? modelToViewValue(DateTime? modelValue) {
    final dobAge = accessor.modelToViewValue(modelValue);
    if (dobAge == null) return null;

    existingMonth = dobAge.months.toString();
    existingDays = dobAge.days.toString();

    return dobAge.years >= 0 ? dobAge.years.toString() : null;
  }

  @override
  DateTime? viewToModelValue(String? viewValue) {
    final years = int.tryParse(viewValue ?? '');

    final dobAge = DigitDOBAge(
      years: years ?? 0,
      months: int.parse(existingMonth),
      days: int.parse(existingDays),
    );

    return accessor.viewToModelValue(dobAge);
  }
}

// A custom ControlValueAccessor to handle the view value as a string for months.
class DobValueAccessorMonthString
    extends ControlValueAccessor<DateTime, String> {
  final DobValueAccessor accessor;

  DobValueAccessorMonthString(this.accessor);
  String existingYear = '0';
  String existingDays = '0';

  @override
  String? modelToViewValue(DateTime? modelValue) {
    final dobAge = accessor.modelToViewValue(modelValue);
    existingYear =
        dobAge != null && dobAge.years >= 0 ? dobAge.years.toString() : '0';
    existingDays = dobAge != null ? dobAge.days.toString() : '0';
    int months = dobAge != null ? dobAge.months : 0;

    return dobAge != null ? months.toString() : existingYear;
  }

  @override
  DateTime? viewToModelValue(String? viewValue) {
    final months = int.tryParse(viewValue ?? '0');
    final dobAge = DigitDOBAge(
      years: int.parse(existingYear),
      months: months ?? 0,
      days: int.parse(existingDays),
    );

    return accessor.viewToModelValue(dobAge);
  }
}
