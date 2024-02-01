import 'package:flutter/material.dart';
import 'package:online_store/theme/app_style.dart';
import 'package:online_store/theme/colors.dart';

class PriceSetter extends StatefulWidget {
  final String prefixString;

  const PriceSetter({
    super.key,
    required this.prefixString});

  @override
  State<PriceSetter> createState() => _PriceSetterState();
}

class _PriceSetterState extends State<PriceSetter> {
  @override
  Widget build(BuildContext context) {
    return  TextField(
      textAlign: TextAlign.end,
      cursorColor: Colors.black,
      cursorWidth: 1.7,
      style: AppStyle.blackText14,
      keyboardType: TextInputType.number,

      decoration: InputDecoration(
        prefixText: widget.prefixString,
        prefixStyle: AppStyle.blackText14,
        suffixText: '\$',
        suffixStyle: AppStyle.blackText14,
        contentPadding: const EdgeInsets.symmetric(vertical: 14, horizontal: 14),
        isCollapsed: true,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: lightGrayColor),
          borderRadius: BorderRadius.circular(8)
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: grayColor),
            borderRadius: BorderRadius.circular(8)
        )
      ),
    );
  }
}
