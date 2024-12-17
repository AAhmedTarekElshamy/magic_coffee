import 'package:flutter/material.dart';
import 'package:magic_coffee/features/auth/presentation/views/signin_view.dart';

import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_field.dart';
import '../../../../../core/widgets/screen_upper.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ScreenUpper(title: 'Sign up',subTitle: 'Create an account here',),
            const SizedBox(
              height: 1,
            ),
            const CustomTextField(hintText: 'Create an account here', iconPath: 'assets/images/icons/Profile.png',),
            const SizedBox(height:20),
            const CustomTextField(hintText: 'Mobile Number', iconPath: 'assets/images/icons/Group.png',),
            const SizedBox(height:20),
            const CustomTextField(hintText: 'Email address', iconPath: 'assets/images/Message1.png',),
            const SizedBox(height:20),
            const CustomTextField(hintText: 'Password', iconPath: 'assets/images/icons/Lock.png',),
            const SizedBox(height:20),
            Row(
              children: [
                const Text('By signing up you agree with our Terms of Use',style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color(0xff324A59),
                    fontSize: 12,
                  ),),
                Checkbox(
                  value: isChecked,
                  onChanged: (bool? newValue) {
                    setState(() {
                      isChecked = newValue ?? false;
                    });
                  },
                  activeColor: const Color(0xff324A59), // Customize the checkbox color
                ),
              ],
            ),

            const SizedBox(height:10),
             Align(
                alignment: Alignment.bottomRight,
                child: CustomButton(onPressed: (){
                 // Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignInView()));
                },

                )),

            Row(
              children: [
                const Text('Already a member? ',style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  color: Color(0xffAAAAAA),
                ),),
                TextButton(
                    onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignInView()));
                },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero, // Removes the default padding
                      minimumSize: Size(0, 0), // Ensures there is no minimum size constraint
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap, // Reduces the tap target size
                    ),
                    child:const Text('Sign in',style: TextStyle(
                  color: Color(0xff324A59),
                  fontSize: 14,
                  fontFamily: 'Poppins',
                ),))
              ],
            )
          ],
        ),
      ),
    );
  }
}
