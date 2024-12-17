import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_field.dart';
import '../../../../../core/widgets/screen_upper.dart';
import '../signin_view.dart';
class ForgotPasswordViewBody extends StatelessWidget {
  const ForgotPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ScreenUpper(title: 'Forgot Password?',subTitle: 'Enter your email address',),
         const SizedBox(height: 20,),
         const CustomTextField(hintText: 'Email address', iconPath: 'assets/images/Message1.png',),
          const SizedBox(height: 140,),
          Align(
            alignment: Alignment.centerRight,
            child: CustomButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignInView()));
            },),
          ),
          const Expanded(child: SizedBox()),

        ],
      ),
    );
  }
}
