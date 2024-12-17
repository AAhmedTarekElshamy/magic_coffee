import 'package:flutter/material.dart';
import 'package:magic_coffee/features/auth/presentation/views/widgets/verification_view_body.dart';
class VerificationView extends StatelessWidget {
  const VerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body:const  VerificationViewBody() ,
    );
  }
}
