import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onPressed});
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          shape: MaterialStateProperty.all<CircleBorder>(
            const CircleBorder(),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(
            const Color(0xff324A59),
          ), // Background color
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            const EdgeInsets.all(20), // Padding inside the button
          ),
          elevation: MaterialStateProperty.all<double>(5), // Shadow elevation
        ),
        child: const Icon(
          Icons.arrow_forward, // Arrow icon
          color: Colors.white, // Icon color
          size: 24, // Icon size
        ),
      ),
    );
  }
}
