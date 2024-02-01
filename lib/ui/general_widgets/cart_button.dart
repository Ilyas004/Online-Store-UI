import 'package:flutter/material.dart';
import 'package:online_store/theme/app_style.dart';

class CartButton extends StatelessWidget {
  final String title;
  final AssetImage image;
  final Color color;
  final Color foregroundColor;
  final Function() onTap;
  final TextStyle style;

  const CartButton({
    super.key,
    required this.title,
    required this.image,
    required this.color,
    required this.onTap,
    required this.foregroundColor,
    required this.style
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 14),
          foregroundColor: foregroundColor,
          backgroundColor: color,
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))
        ),
        onPressed: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: image, color: foregroundColor,),
            SizedBox(width: 8,),
            Text(title, style: style,)
          ],
        )
    );
  }
}
