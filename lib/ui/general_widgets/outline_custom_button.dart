import 'package:flutter/material.dart';
import 'package:online_store/theme/app_style.dart';
import 'package:online_store/theme/colors.dart';

class OutlineCustomButton extends StatelessWidget {
  final String title;
  final Function() onTap;

  const OutlineCustomButton({
    super.key,
    required this.title,
    required this.onTap});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(

          padding: const EdgeInsets.symmetric(vertical: 14),
          minimumSize: const Size(double.infinity, double.minPositive),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          )
        ),
        onPressed: onTap,
        child: Text(title, style: AppStyle.grayText16,)
    );
  }
}
