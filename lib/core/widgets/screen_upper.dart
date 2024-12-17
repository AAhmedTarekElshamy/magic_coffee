import 'package:flutter/material.dart';
class ScreenUpper extends StatelessWidget {
  const ScreenUpper({super.key, required this.title, required this.subTitle});
  final String title;
  final String subTitle;


  @override
  Widget build(BuildContext context) {
    return SizedBox(

      height: MediaQuery.of(context).size.height*0.18,
      child:   Column(
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontFamily: 'Poppins',
            ),
          ),
          const SizedBox(
            height: 17,
          ),
          Text(
            subTitle,
            style: const TextStyle(
              fontSize: 15,
              fontFamily: 'Poppins',
              // fontWeight: FontWeight.bold,
              color: Color(0xffAAAAAA),
            ),
          ),
        ],
      ),
    );
  }
}
