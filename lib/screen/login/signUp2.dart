// import 'package:flutter/material.dart';
// import 'package:park_lion/screen/login/signUp3.dart';

// class Signup2 extends StatelessWidget {
//   const Signup2({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20),
//         child: ListView(
//           children: [
//             SizedBox(height: 100),
//             Image.asset("assets/login/MASS.png", height: 200, width: 1000),
//             SizedBox(height: 50),
//             Row(
//               children: [
//                 Text(
//                   "Check email for OTP",
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
//                   "To reset your password, please enter the",
//                   style: TextStyle(color: Colors.grey, fontSize: 18),
//                 ),
//               ],
//             ),
//             Row(
//               children: [
//                 Text(
//                   "4 digit pin sent to your email",
//                   style: TextStyle(color: Colors.grey, fontSize: 20),
//                 ),
//               ],
//             ),
//             SizedBox(height: 40),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: List.generate(4, (index) {
//                 return SizedBox(
//                   width: 60,
//                   height: 60,
//                   child: TextField(
//                     textAlign: TextAlign.center,
//                     keyboardType: TextInputType.number,
//                     maxLength: 1,
//                     style: TextStyle(fontSize: 24),
//                     decoration: InputDecoration(
//                       counterText: "", // يخفي رقم العداد
//                       filled: true,
//                       fillColor: Colors.grey.shade200,
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(15),
//                         borderSide: BorderSide.none,
//                       ),
//                     ),
//                   ),
//                 );
//               }),
//             ),
//             SizedBox(height: 40),
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Color(0xff65558f),
//                 minimumSize: Size(370, 60),
//               ),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => Signup3()),
//                 );
//               },
//               child: Text(
//                 "Continue",
//                 style: TextStyle(color: Colors.white, fontSize: 25),
//               ),
//             ),
//             SizedBox(height: 20),
//             Center(child: Text("Didn’t get the code ?")),
//             Center(
//               child: Text(
//                 "Resend Code",
//                 style: TextStyle(
//                   color: Color(0XFF65558F),
//                   fontWeight: FontWeight.w900,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
