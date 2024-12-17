import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_field.dart';
import '../../../../../core/widgets/screen_upper.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ScreenUpper(title: 'Sign up',subTitle: 'Create an account here',),
          SizedBox(
            height: 1,
          ),
          CustomTextField(hintText: 'Create an account here', iconPath: 'assets/images/icons/Profile.png',),
          SizedBox(height:20),
          CustomTextField(hintText: 'Mobile Number', iconPath: 'assets/images/icons/Group.png',),
          SizedBox(height:20),
          CustomTextField(hintText: 'Email address', iconPath: 'assets/images/Message1.png',),
          SizedBox(height:20),
          CustomTextField(hintText: 'Password', iconPath: 'assets/images/icons/Lock.png',),
          SizedBox(height:20),
          Center(
            child: Text('By signing up you agree with our Terms of Use',style: TextStyle(
              fontFamily: 'Poppins',
              color: Color(0xff324A59),
              fontSize: 12,
            ),),
          ),
          SizedBox(height:20),
          Align(
              alignment: Alignment.bottomRight,
              child: CustomButton()),
        ],
      ),
    );
  }
}
