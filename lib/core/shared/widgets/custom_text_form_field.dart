import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintTex,
    this.prefixicon,
    this.suffixicon,
    this.validator,
    this.onSaved,
    this.obscureText,
    this.textInputType,
  });
  final String hintTex;
  final Icon? prefixicon;
  final IconButton? suffixicon;
  final String? Function(String?)? validator;
  final Function(String?)? onSaved;
  final bool? obscureText;
  final TextInputType? textInputType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      obscureText: obscureText ?? false,
      onSaved: onSaved,
      validator: validator,
      decoration: InputDecoration(
        prefixIcon: prefixicon,
        suffixIcon: suffixicon,
        hintText: hintTex,
        filled: true,
        fillColor: Colors.white,
        errorStyle: TextStyle(fontWeight: FontWeight.w600),
        enabledBorder: buildoutlineInputBorder(BorderSide.none),
        errorBorder: buildoutlineInputBorder(
          BorderSide(color: Colors.red, width: 1.3),
        ),
        focusedBorder: buildoutlineInputBorder(BorderSide.none),
        focusedErrorBorder: buildoutlineInputBorder(
          BorderSide(color: Colors.red, width: 1.3),
        ),
      ),
    );
  }

  OutlineInputBorder buildoutlineInputBorder(BorderSide border) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: border,
    );
  }
}
