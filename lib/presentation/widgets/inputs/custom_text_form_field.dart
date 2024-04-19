import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(40),
    );

    return TextFormField(
      onChanged: (value) {
        print('value: $value');
      },
      validator: (value) {
        if (value == null) {
          return 'Campo es requerido';
        }
        if (value.isEmpty) {
          return 'Campo es requerido';
        }
        if (value.trim().isEmpty) {
          return 'Campo es requerido';
        }
        return null;
      },
      decoration: InputDecoration(
        enabledBorder: border,
        focusedBorder: border.copyWith(
          borderSide: BorderSide(color: colors.primary),
        ),
        errorBorder: border,
        focusedErrorBorder: border.copyWith(
          borderSide: BorderSide(color: colors.error),
        ),

        isDense: true,
        label: const Text('Cualquier cosa'),
        hintText: 'Este es el hintText',
        focusColor: colors.primary,
        errorText: 'este es el errorText',
      ),
    );
  }
}
