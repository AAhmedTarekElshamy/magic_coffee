import 'package:flutter/material.dart';
import 'package:magic_coffee/features/auth/presentation/views/widgets/forgot_pass_view_body.dart';
class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body:const ForgotPasswordViewBody() ,
    );
  }
}
