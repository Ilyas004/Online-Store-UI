import 'package:flutter/material.dart';
import 'package:online_store/theme/app_style.dart';
import 'package:online_store/theme/colors.dart';

class FilterButton extends StatefulWidget {
  final Function() onTap;
  final String text;
  
  const FilterButton({super.key, required this.onTap, required this.text});

  @override
  State<FilterButton> createState() => _FilterButtonState();
}

class _FilterButtonState extends State<FilterButton> {
  bool _isActive = false;

  void _switchState() {
    _isActive = !_isActive;
  }

  @override
  Widget build(BuildContext context) {

    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(48, 48),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          backgroundColor: _isActive ? darkColor : lightGrayColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          elevation: 0
        ),
        onPressed: () {
          widget.onTap;
          setState(() {
            _switchState();
          });
        },
        child: Text(
          widget.text,
          style: _isActive
              ? AppStyle.whiteText14
              : AppStyle.blackText14,)
    );
  }
}
