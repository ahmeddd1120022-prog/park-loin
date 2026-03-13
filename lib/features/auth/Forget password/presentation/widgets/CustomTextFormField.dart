import 'package:flutter/material.dart';
import 'package:park_lion/features/auth/OTP/presentation/views/otp.dart';

class Customtextformfield extends StatefulWidget {
  const Customtextformfield({super.key});

  @override
  State<Customtextformfield> createState() => _CustomtextformfieldState();
}

class _CustomtextformfieldState extends State<Customtextformfield> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "Email",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w900,
                color: Colors.black,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            hintText: "Enter your email",
            filled: true,
            fillColor: Colors.white,

            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xff4b3278),
            minimumSize: Size(370, 60),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Otp()),
            );
          },
          child: Text(
            "Continue ",

            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
      ],
    );
  }
}
