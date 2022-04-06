import 'package:flutter/material.dart';
import '../themes/theme.dart';

class LoginTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final String? Function(String? value) validator;

  const LoginTextFormField({
    Key? key,
    required this.controller,
    required this.validator,
  }) : super(key: key);

  @override
  State<LoginTextFormField> createState() => _LoginTextFormFieldState();
}

class _LoginTextFormFieldState extends State<LoginTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      controller: widget.controller,
      validator: widget.validator,
      decoration: textfieldDecoration,
    );
  }
}
