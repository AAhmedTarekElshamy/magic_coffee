import 'package:flutter/material.dart';

import '../../../../../core/widgets/screen_upper.dart';
import 'otp_verification.dart';
class VerificationViewBody extends StatefulWidget {
  const VerificationViewBody({super.key});

  @override
  State<VerificationViewBody> createState() => _VerificationViewBodyState();
}

class _VerificationViewBodyState extends State<VerificationViewBody> {
  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 10),
      child: Column(
        children: [
          const ScreenUpper(title: 'Verification',subTitle: 'Enter the OTP code we sent you',),
          const OtpForm(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.2),
          TextButton(
            onPressed: () {},
            child: const Text(
              "Resend OTP Code?",
              style: TextStyle(color: Color(0xFF757575)),
            ),
          ),
        ],
      ),
    );
  }
}
