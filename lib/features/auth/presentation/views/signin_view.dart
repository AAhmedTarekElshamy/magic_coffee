import 'package:flutter/material.dart';
import 'package:magic_coffee/features/auth/presentation/views/widgets/signIn_view_body.dart';
class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SignInViewBody(),
    );
  }
}
