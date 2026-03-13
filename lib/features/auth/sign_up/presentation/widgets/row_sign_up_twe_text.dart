import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:park_lion/core/utils/constants/const_router_app.dart';

class RowSignUpTweText extends StatelessWidget {
  const RowSignUpTweText({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Already have an account ?",
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 15),
          ),
          TextButton(
            onPressed: () {
              GoRouter.of(context).push(ConstRouterApp.idLoginView);
            },
            child: Text(
              "Login",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                color: Color(0xff65558f),
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
