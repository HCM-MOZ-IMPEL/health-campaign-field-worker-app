import 'package:digit_components/digit_components.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class DigitIntegerFormPicker extends StatelessWidget {
  final int? minimum;
  final int? maximum;
  final bool incrementer;
  final String? hint;
  final String label;
  final FormGroup form;
  final String formControlName;
  final void Function(String)? onChanged;
  final Map<String, ValidationMessageFunction>? validationMessages;
  final bool hasErrors;

  const DigitIntegerFormPicker({
    super.key,
    this.minimum,
    this.maximum,
    required this.incrementer,
    required this.formControlName,
    this.hint,
    required this.form,
    required this.label,
    this.onChanged,
    this.validationMessages,
    this.hasErrors = false,
  });

  @override
  Widget build(BuildContext context) {
    if (!incrementer) {
      return LabeledField(
          label: label,
          child: ReactiveTextField(
            formControlName: formControlName,
            decoration: InputDecoration(labelText: hint),
            keyboardType: TextInputType.number,
            readOnly: true,
          ));
    }

    return LabeledField(
        label: label,
        child: IntrinsicHeight(
          child: Row(
            children: [
              _buildButton(
                context,
                border: Border(
                  left: _borderSide,
                  bottom: _borderSide,
                  top: _borderSide,
                ),
                icon: Icons.remove,
                onPressed: () {
                  minimum != null
                      ? form.control(formControlName).value > minimum ||
                              form.control(formControlName).value == null
                          ? form.control(formControlName).value -= 1
                          : 1
                      : form.control(formControlName).value -= 1;

                  onChanged
                      ?.call(form.control(formControlName).value.toString());
                },
              ),
              Expanded(
                child: ReactiveTextField(
                  readOnly: true,
                  textAlign: TextAlign.center,
                  formControlName: formControlName,
                  decoration: InputDecoration(labelText: hint),
                  keyboardType: TextInputType.number,
                  validationMessages: validationMessages,
                ),
              ),
              _buildButton(
                context,
                border: Border(
                  right: _borderSide,
                  bottom: _borderSide,
                  top: _borderSide,
                ),
                icon: Icons.add,
                onPressed: () {
                  maximum != null
                      ? form.control(formControlName).value < maximum ||
                              form.control(formControlName).value == null
                          ? form.control(formControlName).value += 1
                          : maximum
                      : form.control(formControlName).value += 1;
                  onChanged
                      ?.call(form.control(formControlName).value.toString());
                },
              ),
            ],
          ),
        ));
  }

  Widget _buildButton(
    BuildContext context, {
    required Border border,
    required IconData icon,
    VoidCallback? onPressed,
  }) =>
      Container(
        height: 43,
        width: 43,
        margin: EdgeInsets.only(bottom: hasErrors ? 22 : 0),
        child: Material(
          shape: border,
          color: Theme.of(context).colorScheme.background,
          child: InkWell(onTap: onPressed, child: Icon(icon)),
        ),
      );

  BorderSide get _borderSide => const BorderSide(width: 1);
}
