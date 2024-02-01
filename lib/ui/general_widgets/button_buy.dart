import 'package:flutter/material.dart';

class ButtonBuy extends StatelessWidget {
  final Function() onTap;

  const ButtonBuy({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            backgroundColor:  const Color(0xFF2B2B2B),
            elevation: 0,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))

          ),
          onPressed: onTap,
          child: const Text(
            'Add To Card',
            style: TextStyle(
                fontSize: 11,
                fontFamily: 'Sen',
                color: Colors.white),
          )
      ),
    );
  }
}
