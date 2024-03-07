import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final String hintText;

  final TextInputType keyboardType;
  final TextEditingController controller;
  final bool obscureText;

  const CustomTextFormField({
    required Key key,
    required this.labelText,
    required this.hintText,
    this.keyboardType = TextInputType.text,
    required this.controller,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: const TextStyle(
            fontSize: 16,
            color: Color(0xffFFFFFF),
          ),
        ),
        TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          obscureText: obscureText,
          decoration: InputDecoration(
            fillColor: const Color(0xffFFFFFF),
            filled: true,
            hintText: hintText,
            hintStyle: const TextStyle(
              color: Color(0xff2D2D2D),
            ),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(3),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
