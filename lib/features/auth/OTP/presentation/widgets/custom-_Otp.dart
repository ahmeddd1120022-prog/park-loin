import 'package:flutter/material.dart';
import 'package:park_lion/features/auth/Reset%20password/presentation/views/reset_password.dart';

class CustomOtp extends StatefulWidget {
  const CustomOtp({super.key});

  @override
  State<CustomOtp> createState() => _CustomOtpState();
}

class _CustomOtpState extends State<CustomOtp> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(4, (index) {
            return SizedBox(
              width: 60,
              height: 60,
              child: TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                style: TextStyle(fontSize: 24),
                decoration: InputDecoration(
                  counterText: "", // يخفي رقم العداد
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            );
          }),
        ),
        SizedBox(height: 40),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xff65558f),
            minimumSize: Size(370, 60),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ResetPassword()),
            );
          },
          child: Text(
            "Continue",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
        SizedBox(height: 20),
        Center(child: Text("Didn’t get the code ?")),
        Center(
          child: Text(
            "Resend Code",
            style: TextStyle(
              color: Color(0XFF65558F),
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ],
    );
  }
}
