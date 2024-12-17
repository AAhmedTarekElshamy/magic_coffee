import 'package:flutter/material.dart';
 class ForgotPassword extends StatelessWidget {
   const ForgotPassword({super.key});

   @override
   Widget build(BuildContext context) {
     return  Center(
       child: TextButton(
         onPressed: (){},
         child: const Text('Forgot Password?',
           style: TextStyle(
             decoration: TextDecoration.underline,
             fontSize: 15,
             fontFamily: 'Poppins',
             color: Color(0xff324A59),
           ),),
       ),
     );
   }
 }
