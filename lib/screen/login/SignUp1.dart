// import 'package:flutter/material.dart';
// import 'package:park_lion/models/textEmail.dart';
// import 'package:park_lion/screen/login/signUp2.dart';

// class Signup1 extends StatelessWidget {
//   const Signup1({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(backgroundColor: Colors.white),
//       backgroundColor: Colors.white,
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20),
//         child: ListView(
//           children: [
//             SizedBox(height: 70),
//             Image.asset("assets/login/LOKK.png", height: 200, width: 1000),
//             SizedBox(height: 50),
//             Row(
//               children: [
//                 Text(
//                   "Forgot password",
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 25,
//                   ),
//                 ),
//               ],
//             ),
//             Row(
//               children: [
//                 Text(
//                   "Enter your email address below to reset your password.",
//                   style: TextStyle(color: Colors.grey, fontSize: 13),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//             Row(
//               children: [
//                 Text(
//                   "Email",
//                   style: TextStyle(
//                     fontWeight: FontWeight.w900,
//                     fontSize: 25,
//                     color: Colors.black,
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 10),
//             TextEmail(textt: "example@gmail.com"),
//             SizedBox(height: 35),
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Color(0xff65558f),
//                 minimumSize: Size(370, 60),
//               ),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => Signup2()),
//                 );
//               },
//               child: Text(
//                 "Continue",
//                 style: TextStyle(color: Colors.white, fontSize: 25),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
