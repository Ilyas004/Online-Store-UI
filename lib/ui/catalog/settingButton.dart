import 'package:flutter/material.dart';
import 'package:online_store/theme/app_style.dart';
import 'package:online_store/theme/colors.dart';

class SettingButton extends StatelessWidget {
  final Function() onTap;
  final String title;
  final AssetImage image;
  final Border border;

  const SettingButton({
    super.key,
    required this.onTap,
    required this.title,
    required this.image,
    required this.border});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: border
        ),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              elevation: 0,
              shadowColor: Colors.transparent,
              splashFactory: NoSplash.splashFactory,
            ),
            onPressed: onTap,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: image),
                SizedBox(width: 8,),
                Text(title, style: AppStyle.blackText16,)
              ],
            )),
      ),
    );
  }
}
