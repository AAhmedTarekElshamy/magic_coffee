import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onPressed});
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child:RawMaterialButton(
        onPressed:onPressed,
        elevation: 2.0,
        fillColor: const Color(0xff324A59),
        constraints: const BoxConstraints(minWidth: 0.0),
        padding: const EdgeInsets.all(15.0),
        shape: const CircleBorder(),
        child: const Icon(
          Icons.arrow_forward,
          size: 24,
          color: Colors.white,
        ),
      ),
    );
  }
}