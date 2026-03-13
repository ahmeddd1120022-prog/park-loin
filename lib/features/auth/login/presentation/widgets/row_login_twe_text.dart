import 'package:flutter/material.dart';
import 'package:park_lion/features/auth/sign_up/presentation/views/sign_up_view.dart';

class RowLoginTweText extends StatelessWidget {
  const RowLoginTweText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don’t have an account ?",
          style: TextStyle(fontWeight: FontWeight.w900),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignUpView()),
            );
          },
          child: Text(
            "sign up",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              color: Color(0xff65558f),
              fontSize: 17,
            ),
          ),
        ),
      ],
    );
  }
}
