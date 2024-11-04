import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  final String hintText;
  final TextEditingController editingController;
  final bool obscuredText;
  const AuthField(
      {super.key,
      required this.hintText,
      required this.editingController,
      this.obscuredText = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(hintText: hintText),
      controller: editingController,
      obscureText: obscuredText,
      validator: (value) {
        if (value!.isEmpty) {
          return "$hintText is missing";
        }
        return null;
      },
    );
  }
}
