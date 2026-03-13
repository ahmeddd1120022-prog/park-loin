import 'package:flutter/material.dart';

class TextEmail extends StatelessWidget {
  const TextEmail({super.key, required this.textt});
  final String textt;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(40)),
          borderSide: BorderSide(color: Colors.white),
        ),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.all(Radius.circular(40)),
        ),
        hintText: textt,
        hintStyle: TextStyle(color: const Color.fromARGB(255, 75, 38, 38)),
      ),
    );
  }
}
