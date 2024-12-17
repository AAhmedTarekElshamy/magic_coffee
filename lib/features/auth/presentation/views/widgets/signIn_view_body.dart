import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_text_field.dart';
import 'forgot_password_btn.dart';

class SignInViewBody extends StatefulWidget {
  const SignInViewBody({super.key});

  @override
  State<SignInViewBody> createState() => _SignInViewBodyState();
}

class _SignInViewBodyState extends State<SignInViewBody> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sign in',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: 'Poppins',
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Welcome back',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Poppins',
                // fontWeight: FontWeight.bold,
                color: Color(0xffAAAAAA),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextField(hintText: 'Email address', iconPath: 'assets/images/Message1.png',),
            SizedBox(height: 30),
            CustomTextField(hintText: 'Password', iconPath: 'assets/images/icons/Lock.png',),
            SizedBox(
              height: 20,
            ),
            ForgotPassword(),
      
          ],
        ),
      ),
    );
  }
}
