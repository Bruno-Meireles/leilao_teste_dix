import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget image;
  final String text;

  const CustomAppBar({
    required this.image,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          image,
          const SizedBox(
            width: 115,
          ),
          Text(
            text,
            style: const TextStyle(
              fontSize: 20,
              color: Color(0xffFFFFFF),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
