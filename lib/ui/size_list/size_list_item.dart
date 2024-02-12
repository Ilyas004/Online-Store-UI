import 'package:flutter/material.dart';
import 'package:online_store/theme/app_style.dart';
import 'package:online_store/theme/colors.dart';

class SizeListItem extends StatefulWidget {
  const SizeListItem({
    super.key,
    required this.title});

  final String title;

  @override
  State<SizeListItem> createState() => _SizeListItemState();
}

class _SizeListItemState extends State<SizeListItem> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(widget.title, style: AppStyle.blackText16,),
          Transform.scale(
            scale: 1.4,
            child: Checkbox(
              activeColor: Colors.black,
              checkColor: Colors.white,
              side: const BorderSide(width: 1.8),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
              splashRadius: 10,
              value: _isChecked,
              onChanged: (bool? value) {
                setState(() {
                  _isChecked = value!;
                });
              }
            )
          )
        ],
      ),
    );
  }
}


