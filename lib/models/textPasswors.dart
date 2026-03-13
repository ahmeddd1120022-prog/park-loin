import 'package:flutter/material.dart';

class Textpasswors extends StatelessWidget {
  const Textpasswors({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(40)),
          borderSide: BorderSide(color: Colors.white),
        ),
        suffix: Icon(Icons.visibility),
        prefixIcon: Icon(Icons.lock),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(40)),
        ),
        hintText: "************",
        hintStyle: TextStyle(color: const Color.fromARGB(255, 75, 38, 38)),
      ),
    );
  }
}
