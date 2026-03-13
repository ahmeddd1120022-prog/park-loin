import 'package:flutter/material.dart';
import 'package:park_lion/features/auth/sign_up/presentation/widgets/ui_body_sign_up.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.6,
            width: double.infinity,
            child: Image.asset("assets/login/singup.png", fit: BoxFit.cover),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Opacity(
              opacity: 0.8,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 30,
                ),
                height: MediaQuery.of(context).size.height * 0.8,
                decoration: BoxDecoration(
                  color: Color(0xFFF2F0F7),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: UiBodySignUp(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
