import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   Stack(
     children: [
       SizedBox(
         height: MediaQuery.of(context).size.height,
         width:  MediaQuery.of(context).size.width,
         child: Image.asset('assets/images/splash2.png',
         fit: BoxFit.fill,
         ),
       ),

     ]
    );
  }
}
