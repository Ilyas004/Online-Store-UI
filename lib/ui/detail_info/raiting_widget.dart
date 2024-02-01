import 'package:flutter/material.dart';
import 'package:online_store/assets/image.dart';
import 'package:online_store/theme/app_style.dart';

class RaitingWidget extends StatefulWidget {
  const RaitingWidget({super.key});

  @override
  State<RaitingWidget> createState() => _RaitingWidgetState();
}

class _RaitingWidgetState extends State<RaitingWidget> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Image(image: starRaitedImage),
        SizedBox(width: 4,),
        Image(image: starRaitedImage),
        SizedBox(width: 4,),
        Image(image: starRaitedImage),
        SizedBox(width: 4,),
        Image(image: starRaitedImage),
        SizedBox(width: 4,),
        Image(image: starRaitedImage),
        SizedBox(width: 8,),
        Text('5,0', style: AppStyle.blackText16,)
      ],
    );
  }
}
