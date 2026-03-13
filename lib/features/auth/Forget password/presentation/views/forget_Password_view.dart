import 'package:flutter/material.dart';
import 'package:park_lion/features/auth/Forget%20password/presentation/widgets/CustomTextFormField.dart';

class Forgetpassword extends StatefulWidget {
  const Forgetpassword({super.key});

  @override
  State<Forgetpassword> createState() => _ForgetpasswordState();
}

class _ForgetpasswordState extends State<Forgetpassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            SizedBox(height: 70),
            Image.asset("assets/login/LOKK.png", height: 200, width: 1000),
            SizedBox(height: 50),
            Row(
              children: [
                Text(
                  "Forgot password",
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
                  "Enter your email address below to reset your password.",
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                ),
              ],
            ),
            Customtextformfield(),
          ],
        ),
      ),
    );
  }
}
