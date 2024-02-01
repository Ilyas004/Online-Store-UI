import 'package:flutter/material.dart';
import 'package:online_store/theme/app_style.dart';

class DecoratedDivider extends StatelessWidget {
  final String text;
  const DecoratedDivider({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: Divider()),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            text,
            style: AppStyle.blackText16,
          ),
        ),
        const Expanded(child: Divider()),
      ],
    );
  }
}