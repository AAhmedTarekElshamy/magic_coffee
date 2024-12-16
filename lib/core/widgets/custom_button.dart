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
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: const Color(0xFF2F4F5F), // Circular shape
          padding: const EdgeInsets.all(20), // Background color (close to the color in the image)
          elevation: 5, // Shadow elevation
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
