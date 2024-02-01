import 'package:flutter/material.dart';
import 'package:online_store/theme/colors.dart';

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({super.key});

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {

  bool isActive = false;

  void _switchState() {
    setState(() {
      isActive = !isActive;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      width: 56,
      child: Stack(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            height: 32,
            width: 56,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              color: isActive ? darkColor : lightGrayColor
            ),
          ),
          AnimatedContainer(
            width: isActive ? 56 : 32,
            height: 32,
            duration: const Duration(milliseconds: 150),
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                height: 28,
                width: 32,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white
                ),
              ),
            ),
          ),
          Material(
            borderRadius: BorderRadius.circular(32),
            clipBehavior: Clip.hardEdge,
            color: Colors.transparent,
            child: InkWell(
              onTap:  () {
                _switchState();
              },
            ),
          )
        ],
      ),
    );
  }
}
