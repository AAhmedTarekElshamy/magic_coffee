import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/widgets/custom_button.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeViewBody extends StatelessWidget {
  const WelcomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
        height: screenHeight,
        width: screenWidth,
        child: Column(
          children: [
            // Top Stack for background and logo

            Stack(
              children: [
                // Background rectangle
                SvgPicture.asset(
                  'assets/images/green.svg',
                  height: 354,  // adjust height as needed
                  width: 375,
                  fit: BoxFit.fill,
                ),
               // Centered logo at the top
                Positioned(
                  top: -80,
                 bottom: 50,
                  //left: screenWidth * 0.3 , // to center logo
                  child: Image.asset(
                    'assets/images/Vector3.png',
                    height:screenHeight ,
                    width: screenWidth,
                    // your logo
                  ),
                ),
                Positioned(
                  bottom: -50,
                  left: 40,
                 // right: 100,
                  child: Image.asset(
                    'assets/images/Magic Coffee.png',
                    height: 300,
                    width: 350,

                    // your logo
                  ),)
              ],
            ),
         const SizedBox(height: 20,),
            const Text(
              'Feel yourself like\n a barista!',
              style: TextStyle(
                fontSize: 28,
                color: Color(0xff181D2D),
              ),
              textAlign: TextAlign.center,
            ),

            const Text(
              'Magic coffee on order.',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),

            // Spacing between text and button
            const Spacer(),

            // Button with arrow icon
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Handle button press
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(20),
                    backgroundColor: const Color(0xff324A59), // change color to match the theme
                  ),
                  child: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      );

  }
}
