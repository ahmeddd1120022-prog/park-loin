import 'package:flutter/material.dart';
import 'package:park_lion/features/auth/sign_up/presentation/widgets/custom_text_form_field_with_container_sign_up.dart';
import 'package:park_lion/features/auth/sign_up/presentation/widgets/row_sign_up_twe_text.dart';

class UiBodySignUp extends StatelessWidget {
  const UiBodySignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Divider(
          radius: BorderRadius.all(Radius.circular(70)),
          color: Colors.blueGrey,
          thickness: 4,
          indent: 100,
          endIndent: 100,
        ),
        Center(
          child: Text(
            "Welcome",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 29,
              color: Colors.black,
            ),
          ),
        ),
        Center(child: Text("Please enter your details to sign up")),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                color: Color(0xff4b3278),
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.facebook_rounded, color: Colors.blue),
                  Text(
                    "Facebook",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                color: Color(0xff4b3278),
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.g_mobiledata),
                  Text(
                    "Google",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 11),
        Row(
          children: [
            Expanded(
              child: Divider(
                color: Color(0XFF9C9C9C),
                thickness: 1,
                indent: 1,
                endIndent: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text("OR"),
            ),
            Expanded(
              child: Divider(
                color: Color(0XFF9C9C9C),
                thickness: 1,
                indent: 1,
                endIndent: 1,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        CustomTextFormFieldWithContainerSignUp(),
        RowSignUpTweText(),
      ],
    );
  }
}
