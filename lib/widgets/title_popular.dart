import 'package:flutter/material.dart';

class TitlePopular extends StatelessWidget {
  const TitlePopular({
    Key? key,
    required this.text,
    required this.viewall,
    this.ontap,
  }) : super(key: key);

  final String text;
  final String viewall;
  final VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        GestureDetector(
          onTap: ontap,
          child: Text(
            viewall,
            style: const TextStyle(
              color: Colors.blue,
              fontSize: 14,
              decoration: TextDecoration.underline,
            ),
          ),
        )
      ]),
    );
  }
}
