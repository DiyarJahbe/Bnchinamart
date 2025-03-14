import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.text,
    required this.iconpath,
    required this.onValidate,
    required this.onSave,
    this.keyboardType = TextInputType.text,
    this.isObsecureText = false,
  });

  final String text;
  final String iconpath;
  final String? Function(String? value) onValidate;
  final void Function(String? value) onSave;
  final TextInputType keyboardType;
  final bool isObsecureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        fillColor: greyColor,
        filled: true,
        hintText: text,
        hintStyle: TextStyle(
          color: darkGreyColor,
          fontSize: 14,
        ),
        labelStyle: TextStyle(
          color: blackColor,
          fontSize: 14,
        ),
        suffixIcon: Image.asset(iconpath),
        border: const OutlineInputBorder(borderSide: BorderSide.none),
      ),
      validator: onValidate,
      keyboardType: keyboardType,
      obscureText: isObsecureText,
      onSaved: onSave,
    );
  }
}
