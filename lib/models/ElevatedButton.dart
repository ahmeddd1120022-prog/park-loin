import 'package:flutter/material.dart';

class button extends StatelessWidget {
  const button({super.key, required this.text, required this.onPressed});
  final String text;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xff2B8AC2),
        minimumSize: Size(370, 60),
      ),
      onPressed: () {
        onPressed;
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => )
        // );
      },
      child: Text(text, style: TextStyle(color: Colors.white, fontSize: 25)),
    );
  }
}
