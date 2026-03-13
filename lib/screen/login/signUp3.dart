// import 'package:flutter/material.dart';

// import 'package:park_lion/models/textPasswors.dart';

// import 'package:park_lion/screen/login/singup4.dart';

// class Signup3 extends StatelessWidget {
//   const Signup3({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20),
//         child: ListView(
//           children: [
//             Row(
//               children: [
//                 Expanded(
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 70),
//                     child: Divider(height: 5),
//                   ),
//                 ),
//                 Expanded(
//                   child: Padding(
//                     padding: const EdgeInsets.only(right: 12, left: 1),
//                     child: Divider(height: 5),
//                   ),
//                 ),
//                 Expanded(
//                   child: Padding(
//                     padding: const EdgeInsets.only(right: 70),
//                     child: Divider(height: 5),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 100),
//             Image.asset("assets/login/LOK.png", height: 150, width: 500),
//             SizedBox(height: 50),
//             Row(
//               children: [
//                 Text(
//                   "Reset password",
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontWeight: FontWeight.w900,
//                     fontSize: 25,
//                   ),
//                 ),
//               ],
//             ),
//             Row(
//               children: [
//                 Text(
//                   "Choose a strong password you haven’t",
//                   style: TextStyle(color: Colors.grey, fontSize: 19),
//                 ),
//               ],
//             ),
//             Row(
//               children: [
//                 Text(
//                   "used before.",
//                   style: TextStyle(color: Colors.grey, fontSize: 20),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//             Row(
//               children: [
//                 Text(
//                   "New password",
//                   style: TextStyle(
//                     fontWeight: FontWeight.w600,
//                     fontSize: 25,
//                     color: Colors.black,
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 10),
//             Textpasswors(),
//             Row(
//               children: [
//                 Text(
//                   "Confirm  password",
//                   style: TextStyle(
//                     fontWeight: FontWeight.w600,
//                     fontSize: 25,
//                     color: Colors.black,
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 10),
//             Textpasswors(),
//             SizedBox(height: 15),

//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Color(0xff2B8AC2),
//                 minimumSize: Size(370, 60),
//               ),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => Singup4()),
//                 );
//               },
//               child: Text(
//                 "Reset password",
//                 style: TextStyle(color: Colors.white, fontSize: 25),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
