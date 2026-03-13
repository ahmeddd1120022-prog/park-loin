// import 'package:flutter/material.dart';
// import 'package:park_lion/screen/login/login.dart';

// class Splash1 extends StatelessWidget {
//   const Splash1({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             fit: BoxFit.cover,
//             image: AssetImage("assets/login/splach.jpg"),
//           ),
//         ),
//         child: Column(
//           children: [
//             SizedBox(height: 100),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   "Welcome TO ",
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 35,
//                     color: Colors.white,
//                   ),
//                 ),
//                 Text(
//                   "Park",
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 35,
//                     color: Colors.black,
//                   ),
//                 ),
//               ],
//             ),
//             Text(
//               "Line! ",
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 35,
//                 color: Colors.white,
//               ),
//             ),
//             Text(
//               "Your first step towards effortless ",
//               style: TextStyle(fontSize: 18, color: Colors.white),
//             ),
//             Text(
//               "parking Welcome to a smarter world.",
//               style: TextStyle(fontSize: 18, color: Colors.white),
//             ),
//             SizedBox(height: 400),
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Color(0xff65558F),
//                 minimumSize: Size(370, 60),
//               ),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => Login()),
//                 );
//               },
//               child: Text(
//                 "Get Stared",
//                 style: TextStyle(color: Colors.white, fontSize: 25),
//               ),
//             ),
//           ],
//         ),
//       ),
//       // Column(
//       //   children: [

//       //     // SizedBox(height: 90),
//       //     // Row(
//       //     //   mainAxisAlignment: MainAxisAlignment.center,
//       //     //   children: [
//       //     //     Text(
//       //     //       "Welcome TO",
//       //     //       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45),
//       //     //     ),
//       //     //     Text(
//       //     //       " Park",
//       //     //       style: TextStyle(
//       //     //         fontWeight: FontWeight.bold,
//       //     //         fontSize: 45,
//       //     //         color: Color(0xFF2B8AC2),
//       //     //       ),
//       //     //     ),
//       //     //   ],
//       //     // ),
//       //     // Text(
//       //     //   "Line!",
//       //     //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45),
//       //     // ),
//       //     // SizedBox(height: 10),
//       //     // Text(
//       //     //   "Your first step towards effortless",
//       //     //   style: TextStyle(
//       //     //     fontWeight: FontWeight.bold,
//       //     //     fontSize: 20,
//       //     //     color: Color(0xFF656565),
//       //     //   ),
//       //     // ),
//       //     // Text(
//       //     //   "parking Welcome to a smarter world.",
//       //     //   style: TextStyle(
//       //     //     fontWeight: FontWeight.bold,
//       //     //     fontSize: 20,
//       //     //     color: Color(0xFF656565),
//       //     //   ),
//       //     // ),

//       //     // SizedBox(height: 80),
//       //     // ElevatedButton(
//       //     //   style: ElevatedButton.styleFrom(
//       //     //     backgroundColor: Color(0xff2B8AC2),
//       //     //     minimumSize: Size(370, 60),
//       //     //   ),
//       //     //   onPressed: () {
//       //     //     Navigator.push(
//       //     //       context,
//       //     //       MaterialPageRoute(builder: (context) => Login()),
//       //     //     );
//       //     //   },
//       //     //   child: Text(
//       //     //     "Get Stared",
//       //     //     style: TextStyle(color: Colors.white, fontSize: 25),
//       //     //   ),
//       //     // ),
//       //   ],
//       // ),
//     );
//   }
// }
