// import 'package:flutter/material.dart';

// import 'package:park_lion/screen/login/singUp.dart';

// class Login extends StatefulWidget {
//   const Login({super.key});

//   @override
//   State<Login> createState() => _LoginState();
// }

// class _LoginState extends State<Login> {
//   bool isHidden = true;
//   bool isRemember = true;
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           SizedBox(
//             height: MediaQuery.of(context).size.height * 0.6,
//             width: double.infinity,
//             child: Image.asset("assets/login/logIn.png", fit: BoxFit.cover),
//           ),
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: Opacity(
//               opacity: 0.8,
//               child: Container(
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 24,
//                   vertical: 30,
//                 ),
//                 height: MediaQuery.of(context).size.height * 0.6,
//                 decoration: BoxDecoration(
//                   color: Color(0xFFF2F0F7),
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(50),
//                     topRight: Radius.circular(50),
//                   ),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.stretch,
//                   children: [
//                     Divider(
//                       radius: BorderRadius.all(Radius.circular(70)),
//                       color: Colors.blueGrey,
//                       thickness: 4,
//                       indent: 100,
//                       endIndent: 100,
//                     ),
//                     Text(
//                       "Email",
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.w900,
//                         color: Colors.black,
//                       ),
//                     ),
//                     const SizedBox(height: 10),
//                     TextField(
//                       decoration: InputDecoration(
//                         hintText: "Enter your email",
//                         filled: true,
//                         fillColor: Colors.white,

//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(30),
//                           borderSide: BorderSide.none,
//                         ),
//                       ),
//                     ),

//                     SizedBox(height: 10),
//                     Text(
//                       "Password",
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.w900,
//                         color: Colors.black,
//                       ),
//                     ),
//                     const SizedBox(height: 10),

//                     TextField(
//                       obscureText: isHidden,
//                       decoration: InputDecoration(
//                         hintText: "***********",
//                         filled: true,
//                         fillColor: Colors.white,
//                         prefixIcon: Icon(Icons.lock_outlined),
//                         suffixIcon: IconButton(
//                           onPressed: () {
//                             setState(() {
//                               isHidden = !isHidden;
//                             });
//                           },
//                           icon: Icon(
//                             isHidden ? Icons.visibility_off : Icons.visibility,
//                           ),
//                         ),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(30),
//                           borderSide: BorderSide.none,
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 15),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Row(
//                           children: [
//                             Checkbox(
//                               value: isRemember,
//                               activeColor: Color(0xff5e3b8d),
//                               onChanged: (value) {
//                                 setState(() {
//                                   isRemember = value!;
//                                 });
//                               },
//                             ),
//                             Text(
//                               "Remember me",
//                               style: TextStyle(fontWeight: FontWeight.w900),
//                             ),
//                           ],
//                         ),

//                         TextButton(
//                           onPressed: () {},
//                           child: Text(
//                             "Forget Password",
//                             style: TextStyle(
//                               color: Color(0xff65558F),
//                               fontWeight: FontWeight.w900,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: 15),
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Color(0xff4b3278),
//                         minimumSize: Size(370, 60),
//                       ),
//                       onPressed: () {},
//                       child: Text(
//                         "Login",
//                         style: TextStyle(color: Colors.white, fontSize: 25),
//                       ),
//                     ),
//                     SizedBox(height: 15),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           "Don’t have an account ?",
//                           style: TextStyle(fontWeight: FontWeight.w900),
//                         ),
//                         TextButton(
//                           onPressed: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(builder: (context) => Singup()),
//                             );
//                           },
//                           child: Text(
//                             "sign up",
//                             style: TextStyle(
//                               fontWeight: FontWeight.w900,
//                               color: Color(0xff65558f),
//                               fontSize: 17,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// // import 'package:flutter/material.dart';

// // import 'package:park_lion/models/textEmail.dart';
// // import 'package:park_lion/models/textPasswors.dart';
// // import 'package:park_lion/screen/login/singUp.dart';

// // class Login extends StatelessWidget {
// //   const Login({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       //  backgroundColor: Colors.white,
// //       // appBar: AppBar(),
// //       body: ListView(
// //         children: [
// //           Container(
// //             height: 290,
// //             decoration: BoxDecoration(
// //               color: Colors.white,
// //               image: DecorationImage(
// //                 fit: BoxFit.cover,
// //                 image: AssetImage('assets/logIn.png'),
// //               ),
// //             ),
// //           ),
// //           Container(
// //             height: 542,
// //             width: double.infinity,
// //             decoration: BoxDecoration(
// //               color: Color(0xffDFDAE7),
// //               borderRadius: BorderRadius.all(Radius.circular(50)),
// //             ),
// //             child: Padding(
// //               padding: const EdgeInsets.symmetric(horizontal: 20),
// //               child: ListView(
// //                 children: [
// //                   SizedBox(height: 10),

// //                   Divider(
// //                     endIndent: 130,
// //                     indent: 130,
// //                     thickness: 4.5,
// //                     color: Color(0xff9C9C9C),
// //                   ),
// //                   SizedBox(height: 20),
// //                   Row(
// //                     children: [
// //                       Text(
// //                         "Email",
// //                         style: TextStyle(
// //                           fontWeight: FontWeight.bold,
// //                           fontSize: 24,
// //                           color: Colors.black,
// //                         ),
// //                       ),
// //                     ],
// //                   ),

// //                   TextEmail(textt: "Enter your email"),
// //                   SizedBox(height: 10),
// //                   Row(
// //                     children: [
// //                       Text(
// //                         "Password",
// //                         style: TextStyle(
// //                           fontWeight: FontWeight.bold,
// //                           fontSize: 23,
// //                           color: Colors.black,
// //                         ),
// //                       ),
// //                     ],
// //                   ),

// //                   Textpasswors(),
// //                   Row(
// //                     children: [
// //                       Text(
// //                         "Forget Password",
// //                         style: TextStyle(
// //                           color: Color(0xff2B8AC2),
// //                           fontSize: 18,
// //                         ),
// //                       ),
// //                       Spacer(flex: 1),
// //                     ],
// //                   ),
// //                   ElevatedButton(
// //                     style: ElevatedButton.styleFrom(
// //                       backgroundColor: Color(0xff2B8AC2),
// //                       minimumSize: Size(370, 60),
// //                     ),
// //                     onPressed: () {
// //                       Navigator.push(
// //                         context,
// //                         MaterialPageRoute(builder: (context) => Login()),
// //                       );
// //                     },
// //                     child: Text(
// //                       "Login",
// //                       style: TextStyle(color: Colors.white, fontSize: 25),
// //                     ),
// //                   ),
// //                   Row(
// //                     mainAxisAlignment: MainAxisAlignment.center,
// //                     children: [
// //                       Text(
// //                         "Don’t have an account ?",
// //                         style: TextStyle(
// //                           fontSize: 18,
// //                           fontWeight: FontWeight.w800,
// //                         ),
// //                       ),
// //                       GestureDetector(
// //                         onTap: () {
// //                           Navigator.push(
// //                             context,
// //                             MaterialPageRoute(builder: (context) => Singup()),
// //                           );
// //                         },
// //                         child: Text(
// //                           " sign up",
// //                           style: TextStyle(
// //                             color: Color(0xff2B8AC2),
// //                             fontSize: 18,
// //                             fontWeight: FontWeight.w800,
// //                           ),
// //                         ),
// //                       ),
// //                     ],
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

// // import 'package:flutter/material.dart';

// // class Login extends StatefulWidget {
// //   const Login({super.key});

// //   @override
// //   State<Login> createState() => _Login();
// // }

// // class _Login extends State<Login> {
// //   bool isRemember = true;
// //   bool isHidden = true;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Stack(
// //         children: [
// //           /// 🔹 Background Image
// //           SizedBox(
// //             height: MediaQuery.of(context).size.height * 0.55,
// //             width: double.infinity,
// //             child: Image.asset(
// //               "assets/logIn.png", // حط صورتك هنا
// //               fit: BoxFit.cover,
// //             ),
// //           ),

// //           /// 🔹 Bottom Card
// //           Align(
// //             alignment: Alignment.bottomCenter,
// //             child: Container(
// //               height: MediaQuery.of(context).size.height * 0.6,
// //               width: double.infinity,
// //               padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
// //               decoration: const BoxDecoration(
// //                 color: Color(0xFFF2F0F7),
// //                 borderRadius: BorderRadius.only(
// //                   topLeft: Radius.circular(35),
// //                   topRight: Radius.circular(35),
// //                 ),
// //               ),
// //               child: Column(
// //                 crossAxisAlignment: CrossAxisAlignment.start,
// //                 children: [
// //                   /// Email
// //                   const Text(
// //                     "Email",
// //                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
// //                   ),
// //                   const SizedBox(height: 10),
// //                   TextField(
// //                     decoration: InputDecoration(
// //                       hintText: "Enter your email",
// //                       filled: true,
// //                       fillColor: Colors.white,
// //                       contentPadding: const EdgeInsets.symmetric(
// //                         horizontal: 20,
// //                         vertical: 18,
// //                       ),
// //                       border: OutlineInputBorder(
// //                         borderRadius: BorderRadius.circular(30),
// //                         borderSide: BorderSide.none,
// //                       ),
// //                     ),
// //                   ),

// //                   const SizedBox(height: 25),

// //                   /// Password
// //                   const Text(
// //                     "Password",
// //                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
// //                   ),
// //                   const SizedBox(height: 10),
// //                   TextField(
// //                     obscureText: isHidden,
// //                     decoration: InputDecoration(
// //                       hintText: "****",
// //                       filled: true,
// //                       fillColor: Colors.white,
// //                       prefixIcon: const Icon(Icons.lock_outline),
// //                       suffixIcon: IconButton(
// //                         icon: Icon(
// //                           isHidden ? Icons.visibility_off : Icons.visibility,
// //                         ),
// //                         onPressed: () {
// //                           setState(() {
// //                             isHidden = !isHidden;
// //                           });
// //                         },
// //                       ),
// //                       contentPadding: const EdgeInsets.symmetric(
// //                         horizontal: 20,
// //                         vertical: 18,
// //                       ),
// //                       border: OutlineInputBorder(
// //                         borderRadius: BorderRadius.circular(30),
// //                         borderSide: BorderSide.none,
// //                       ),
// //                     ),
// //                   ),

// //                   const SizedBox(height: 15),

// //                   /// Remember + Forget
// //                   Row(
// //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                     children: [
// //                       Row(
// //                         children: [
// //                           Checkbox(
// //                             value: isRemember,
// //                             activeColor: const Color(0xFF5E3B8D),
// //                             shape: RoundedRectangleBorder(
// //                               borderRadius: BorderRadius.circular(6),
// //                             ),
// //                             onChanged: (value) {
// //                               setState(() {
// //                                 isRemember = value!;
// //                               });
// //                             },
// //                           ),
// //                           const Text("Remember me"),
// //                         ],
// //                       ),
// //                       const Text(
// //                         "Forget Password",
// //                         style: TextStyle(
// //                           color: Color(0xFF5E3B8D),
// //                           fontWeight: FontWeight.w500,
// //                         ),
// //                       ),
// //                     ],
// //                   ),

// //                   const SizedBox(height: 20),

// //                   /// Login Button
// //                   SizedBox(
// //                     width: double.infinity,
// //                     height: 55,
// //                     child: ElevatedButton(
// //                       style: ElevatedButton.styleFrom(
// //                         backgroundColor: const Color(0xFF5E3B8D),
// //                         shape: RoundedRectangleBorder(
// //                           borderRadius: BorderRadius.circular(30),
// //                         ),
// //                       ),
// //                       onPressed: () {},
// //                       child: const Text(
// //                         "Login",
// //                         style: TextStyle(fontSize: 18),
// //                       ),
// //                     ),
// //                   ),

// //                   const SizedBox(height: 20),

// //                   /// Sign up
// //                   Center(
// //                     child: RichText(
// //                       text: const TextSpan(
// //                         text: "Don’t have an account ? ",
// //                         style: TextStyle(color: Colors.black54),
// //                         children: [
// //                           TextSpan(
// //                             text: "sign up",
// //                             style: TextStyle(
// //                               color: Color(0xFF5E3B8D),
// //                               fontWeight: FontWeight.bold,
// //                             ),
// //                           ),
// //                         ],
// //                       ),
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
