import 'package:flutter/material.dart';
import 'package:online_store/theme/colors.dart';
import 'package:online_store/ui/checkout/checkout_page.dart';

class CustomRadio extends StatefulWidget {
  final SingingCharacter value;
  final SingingCharacter? groupValue;
  final ValueChanged<SingingCharacter>? onChanged;

  const CustomRadio({
    super.key,
    required this.value,
    this.onChanged,
    this.groupValue});

  @override
  State<CustomRadio> createState() => _CustomRadioState();
}

class _CustomRadioState extends State<CustomRadio> {

  bool hasFocus = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(32),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () {
          if (widget.onChanged != null) {
            widget.onChanged!(widget.value);
          }

          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: SizedBox(
          width: 24,
          height: 24,
          child: Stack(
            children: [
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.circle,
                  border: Border.all(color: grayColor, width: 1.5)),
                clipBehavior: Clip.hardEdge,
                ),
              Center(
                child: AnimatedContainer(
                  clipBehavior: Clip.hardEdge,
                  width: widget.value == widget.groupValue ? 22 : 0,
                  height: widget.value == widget.groupValue ? 22 : 0,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                  duration: const Duration(milliseconds: 150),),
              ),
              Center(
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 100),
                  height: widget.value == widget.groupValue ? 8 : 0,
                  width: widget.value == widget.groupValue ? 8 : 0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
