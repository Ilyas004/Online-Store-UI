import 'package:flutter/material.dart';
import 'package:online_store/theme/colors.dart';

class InputPasswordText extends StatefulWidget {

  const InputPasswordText({super.key});

  @override
  State<InputPasswordText> createState() => _InputPasswordTextState();
}

class _InputPasswordTextState extends State<InputPasswordText> {

  late FocusNode _focusNode;

  bool _obscureText = true;

  void _suffixIconTap() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

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
      obscureText: _obscureText,
      focusNode: _focusNode,
      keyboardType: TextInputType.visiblePassword,
      cursorColor: Colors.black,
      decoration: InputDecoration(
          hintText: 'Password',
          prefixIcon: Icon(
            Icons.lock,
            color: _focusNode.hasFocus ? Colors.black : Colors.grey,
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: InkWell(
                radius: 10,
                onTap: _suffixIconTap,
                child: Icon(
                  _obscureText ? Icons.visibility_off : Icons.visibility,
                  color: _obscureText ? Colors.grey : Colors.black,)
            ),
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
