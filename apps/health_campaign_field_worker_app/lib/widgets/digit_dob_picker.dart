import 'package:digit_components/widgets/atoms/digit_date_form_picker.dart';
import 'package:digit_components/widgets/atoms/digit_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:health_campaign_field_worker_app/widgets/showcase/config/showcase_constants.dart';
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
                valueAccessor: DobValueAccessor(),
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
                    String value =
                        (DateTime.now().difference(formControl.value).inDays /
                                366)
                            .round()
                            .toStringAsFixed(0);

                    return int.parse(value) <= 150
                        ? null
                        : {'A idade não deve ser superior a 150 anos': true};
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

class DobValueAccessor extends ControlValueAccessor<DateTime, String> {
  @override
  String? modelToViewValue(DateTime? modelValue) {
    if (modelValue == null) return null;

    return (DateTime.now().difference(modelValue).inDays / 366)
        .round()
        .toStringAsFixed(0);
  }

  @override
  DateTime? viewToModelValue(String? viewValue) {
    if (viewValue == null || viewValue.trim().isEmpty) return null;
    final value = int.tryParse(viewValue);
    if (value == null) return null;

    return DateTime(
      DateTime.now().subtract(Duration(days: value * 366)).year,
      1,
      1,
    );
  }
}
