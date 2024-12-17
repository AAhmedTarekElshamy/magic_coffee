import 'package:flutter/material.dart';
import 'package:magic_coffee/features/auth/presentation/views/widgets/signUp_view_body.dart';
class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.white,
      appBar: AppBar(),
      body:const SignUpViewBody() ,

    );
  }
}
