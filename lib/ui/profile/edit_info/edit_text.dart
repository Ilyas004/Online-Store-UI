import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_store/theme/app_style.dart';
import 'package:online_store/theme/colors.dart';

class EditText extends StatefulWidget {
  final String hintText;
  final TextInputType inputType;

  const EditText({
    super.key,
    required this.hintText,
    required this.inputType});

  @override
  State<EditText> createState() => _EditTextState();
}

class _EditTextState extends State<EditText> {
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: _focusNode,
      cursorColor: Colors.black,
      keyboardType: widget.inputType,
      style: AppStyle.blackText16,
      decoration: InputDecoration(
        isCollapsed: true,
        contentPadding: const EdgeInsets.only(top: 16),
        hintText: widget.hintText,
        hintStyle: AppStyle.grayText16,
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black)
        ),
        enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: grayColor)
        ),
        suffixIcon: InkWell(
          borderRadius: BorderRadius.circular(32),
          onTap: () {  },
            child: Icon(
              CupertinoIcons.clear_circled_solid,
              color: _focusNode.hasFocus ? Colors.black : grayColor,)),

      ),
    );
  }
}
