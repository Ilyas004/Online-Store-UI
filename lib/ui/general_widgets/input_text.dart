import 'package:flutter/material.dart';
import 'package:online_store/theme/colors.dart';

class InputText extends StatefulWidget {
  final IconData? suffixIcon;
  final IconData prefIcon;
  final String labelText;
  final TextInputType textInputType;

  const InputText({
    super.key,
    required this.prefIcon,
    required this.labelText,
    required this.textInputType,
    this.suffixIcon});

  @override
  State<InputText> createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
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
    return TextField(
      focusNode: _focusNode,
      keyboardType: widget.textInputType,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        hintText: widget.labelText,
        prefixIcon: Icon(
          widget.prefIcon,
          color: _focusNode.hasFocus ? Colors.black : Colors.grey,
        ),
        contentPadding: const EdgeInsets.all(16),
        isCollapsed: true,
        filled: true,
        fillColor: lightGrayColor,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8)
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8)
        )
      ),
    );
  }
}
