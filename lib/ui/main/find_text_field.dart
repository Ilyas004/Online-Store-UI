import 'package:flutter/material.dart';
import 'package:online_store/assets/image.dart';
import 'package:online_store/theme/colors.dart';

class FindTextField extends StatefulWidget {
  const FindTextField({super.key});

  @override
  State<FindTextField> createState() => _FindTextFieldState();
}

class _FindTextFieldState extends State<FindTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorWidth: 1.5,
      cursorColor: Colors.black,
      style: const TextStyle(fontSize: 14, color: Colors.black, fontFamily: 'Sen'),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 13, horizontal: 16),
        isCollapsed: true,
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: grayColor),
            borderRadius: BorderRadius.circular(8)),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(8)),
        hintText: 'поиск',
        hintStyle: const TextStyle(fontSize: 14, color: grayColor, fontFamily: 'Sen'),
        suffixIcon: const Image(image: searchImage)
      ),
    );
  }
}
