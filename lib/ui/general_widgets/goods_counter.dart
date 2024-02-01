import 'package:flutter/material.dart';
import 'package:online_store/assets/image.dart';
import 'package:online_store/theme/app_style.dart';
import 'package:online_store/theme/colors.dart';

class GoodsCounterWidget extends StatefulWidget {
  const GoodsCounterWidget({super.key});

  @override
  State<GoodsCounterWidget> createState() => _GoodsCounterWidgetState();
}

class _GoodsCounterWidgetState extends State<GoodsCounterWidget> {
  int count = 1;

  void decrementNumber() {
    setState(() {
      count--;
    });
  }

  void incrementNumber() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: lightGrayColor),
        borderRadius: BorderRadius.circular(8)
      ),
      elevation: 0,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
              onPressed: count > 1 ? decrementNumber : null,
              splashRadius: 15,
              icon: Image(
                image: minusImage,
                color: count > 1 ? Colors.black : lightGrayColor,)
          ),
          SizedBox(
            width: 18,
            child: Text(
              '$count',
              style: AppStyle.blackTextBold16,
              textAlign: TextAlign.center,)),
          IconButton(
              onPressed: count == 10 ? null : incrementNumber,
              splashRadius: 15,
              icon: Image(
                image: plusImage,
                color: count == 10 ? lightGrayColor : Colors.black,
              )
          )
        ],
      ),
    );
  }
}
