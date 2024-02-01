import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_store/theme/colors.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Function() onTap;
  final AssetImage? image;
  final Color backgroundColor;
  final Color textColor;

  const CustomButton(
      {super.key,
      required this.title,
      required this.onTap,
      required this.image,
      required this.backgroundColor,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        splashFactory: NoSplash.splashFactory,
        elevation: 0,
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8)),
      ),
      onPressed: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: Row(
          children: [
            if (image != null)
              Image(image: image!),
            Expanded(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Sen',
                  color: textColor),
              )
            )
          ],
        ),
      )
    );
  }
}
