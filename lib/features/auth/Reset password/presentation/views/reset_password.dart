import 'package:flutter/material.dart';
import 'package:park_lion/features/auth/Reset%20password/presentation/widgets/custom_reset_password.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 70),
                    child: Divider(height: 5),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 12, left: 1),
                    child: Divider(height: 5),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 70),
                    child: Divider(height: 5),
                  ),
                ),
              ],
            ),
            SizedBox(height: 100),
            Image.asset("assets/login/LOK.png", height: 150, width: 500),
            SizedBox(height: 50),
            Row(
              children: [
                Text(
                  "Reset password",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Choose a strong password you haven’t",
                  style: TextStyle(color: Colors.grey, fontSize: 19),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "used before.",
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
              ],
            ),
            CustomResetPassword(),
          ],
        ),
      ),
    );
  }
}
