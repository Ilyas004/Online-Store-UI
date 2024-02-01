import 'package:flutter/material.dart';
import 'package:online_store/theme/app_style.dart';

class TextTransition extends StatelessWidget {
  final String text;
  final String clickableText;
  final Function() onTap;
  const TextTransition({super.key, required this.text, required this.clickableText, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text, style: AppStyle.grayText16,),
        InkWell(
          onTap: onTap,
          child: Text(clickableText, style: AppStyle.blackText16,)
        )
      ],
    );
  }
}
