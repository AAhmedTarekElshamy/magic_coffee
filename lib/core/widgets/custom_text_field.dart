import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.iconPath,
  });

  final String hintText;
  final String iconPath; // Path to your SVG icon

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: '  ${hintText}',
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 17,
          fontFamily: 'Poppins',
        ),
        prefixIcon: Container(
          width: 55, // Adjust width to your needs
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                iconPath,
                height: 30, // Size of the SVG icon
                width: 30,
                 fit: BoxFit.fill,
                 color: const Color(0xff001833), // You can adjust the color of the SVG if necessary
              ),
              //const Spacer(),
              Container(
                height: 30, // Height of the vertical line
                width: 2, // Thickness of the line
                color: Colors.grey,
              ), // Vertical line
            ],
          ),
        ),
      ),
    );
  }
}

