import 'package:flutter/material.dart';
import 'package:park_lion/features/auth/OTP/presentation/widgets/custom-_Otp.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            SizedBox(height: 100),
            Image.asset("assets/login/MASS.png", height: 200, width: 1000),
            SizedBox(height: 50),
            Row(
              children: [
                Text(
                  "Check email for OTP",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "To reset your password, please enter the",
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "4 digit pin sent to your email",
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
              ],
            ),
            SizedBox(height: 40),
            CustomOtp(),
          ],
        ),
      ),
    );
  }
}
