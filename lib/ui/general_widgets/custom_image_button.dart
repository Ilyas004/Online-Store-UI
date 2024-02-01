import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomImageButton extends StatelessWidget {
  final AssetImage image;
  final Function() onTap;
  final Color? imageColor;

  const CustomImageButton({
    super.key,
    required this.image,
    required this.onTap,
    required this.imageColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: 104,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          side: const BorderSide(color: CupertinoColors.extraLightBackgroundGray),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          elevation: 0,
          splashFactory: NoSplash.splashFactory
        ),
        onPressed: onTap,
        child: Image(
          image: image,
          color: imageColor,
        )
      ),
    );
  }
}
