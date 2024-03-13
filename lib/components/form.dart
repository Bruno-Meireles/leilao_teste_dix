import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  final String labelText;
  final String hintText;

  final TextInputType keyboardType;
  final TextEditingController controller;

  final bool showPassword;
  final Widget? suffixIcon;

  const CustomTextFormField({
    required Key key,
    required this.labelText,
    required this.hintText,
    this.keyboardType = TextInputType.text,
    required this.controller,
    this.showPassword = false,
    this.suffixIcon,
  }) : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.labelText,
          style: const TextStyle(
            fontSize: 16,
            color: Color(0xffFFFFFF),
          ),
        ),
        TextFormField(
          controller: widget.controller,
          keyboardType: widget.keyboardType,
          obscureText: widget.showPassword,
          decoration: InputDecoration(
            fillColor: const Color(0xffFFFFFF),
            filled: true,
            hintText: widget.hintText,
            hintStyle: const TextStyle(
              color: Color(0xff2D2D2D),
            ),
            suffixIcon: widget.suffixIcon,
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
