import 'package:flutter/material.dart';

class CustomResetPassword extends StatefulWidget {
  const CustomResetPassword({super.key});

  @override
  State<CustomResetPassword> createState() => _CustomResetPasswordState();
}

class _CustomResetPasswordState extends State<CustomResetPassword> {
  bool isHidden = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "New password",
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
          obscureText: isHidden,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            prefixIcon: Icon(Icons.lock_outlined),
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isHidden = !isHidden;
                });
              },
              icon: Icon(isHidden ? Icons.visibility_off : Icons.visibility),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        Row(
          children: [
            Text(
              "Confirm password",
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
          obscureText: isHidden,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            prefixIcon: Icon(Icons.lock_outlined),
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isHidden = !isHidden;
                });
              },
              icon: Icon(isHidden ? Icons.visibility_off : Icons.visibility),
            ),
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
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => ()),
            // );
          },
          child: Text(
            "Reset password",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
      ],
    );
  }
}
