import 'package:flutter/material.dart';
import 'package:park_lion/features/auth/login/presentation/widgets/custom_text_form_field_with_container_login.dart';
import 'package:park_lion/features/auth/login/presentation/widgets/row_login_twe_text.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.6,
            width: double.infinity,
            child: Image.asset("assets/login/logIn.png", fit: BoxFit.cover),
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
                height: MediaQuery.of(context).size.height * 0.6,
                decoration: BoxDecoration(
                  color: Color(0xFFF2F0F7),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const [
                    Divider(
                      radius: BorderRadius.all(Radius.circular(70)),
                      color: Colors.blueGrey,
                      thickness: 4,
                      indent: 100,
                      endIndent: 100,
                    ),
                    CustomTextFormFieldWithContainerLogin(),
                    SizedBox(height: 15),
                    RowLoginTweText(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
