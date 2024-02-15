import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    super.key,
    this.labelText,
    this.suffixIcon,
    this.obscureText = false,
  });

  final String? labelText;
  final bool obscureText;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.visiblePassword,
      obscureText: obscureText,
      decoration: InputDecoration(
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey)),
        suffixIcon: suffixIcon,
        labelText: labelText,
      ),
    );
  }
}
