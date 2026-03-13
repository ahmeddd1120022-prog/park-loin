import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:park_lion/core/utils/constants/const_router_app.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/login/splach.jpg"),
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome TO ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Park",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Text(
              "Line! ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
                color: Colors.white,
              ),
            ),
            Text(
              "Your first step towards effortless ",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            Text(
              "parking Welcome to a smarter world.",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 400),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff65558F),
                minimumSize: Size(370, 60),
              ),
              onPressed: () {
                GoRouter.of(context).push(ConstRouterApp.idLoginView);
              },
              child: Text(
                "Get Stared",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
