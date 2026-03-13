// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:park_lion/core/utils/constants/const_router_app.dart';
// import 'package:park_lion/screen/login/SignUp1.dart';
// import 'package:park_lion/screen/login/login.dart';

// class Singup extends StatefulWidget {
//   const Singup({super.key});

//   @override
//   State<Singup> createState() => _SingupState();
// }

// class _SingupState extends State<Singup> {
//   bool isHidden = true;
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           SizedBox(
//             height: MediaQuery.of(context).size.height * 0.6,
//             width: double.infinity,
//             child: Image.asset("assets/login/singup.png", fit: BoxFit.cover),
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
//                 height: MediaQuery.of(context).size.height * 0.8,
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
//                     Center(
//                       child: Text(
//                         "Welcome",
//                         style: TextStyle(
//                           fontWeight: FontWeight.w900,
//                           fontSize: 29,
//                           color: Colors.black,
//                         ),
//                       ),
//                     ),
//                     Center(child: Text("Please enter your details to sign up")),
//                     SizedBox(height: 10),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Container(
//                           height: 50,
//                           width: 150,
//                           decoration: BoxDecoration(
//                             color: Color(0xff4b3278),
//                             borderRadius: BorderRadius.all(Radius.circular(50)),
//                           ),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                             children: [
//                               Icon(Icons.facebook_rounded, color: Colors.blue),
//                               Text(
//                                 "Facebook",
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.w900,
//                                   color: Colors.white,
//                                   fontSize: 17,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           height: 50,
//                           width: 150,
//                           decoration: BoxDecoration(
//                             color: Color(0xff4b3278),
//                             borderRadius: BorderRadius.all(Radius.circular(50)),
//                           ),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                             children: [
//                               Icon(Icons.g_mobiledata),
//                               Text(
//                                 "Google",
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.w900,
//                                   color: Colors.white,
//                                   fontSize: 17,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: 11),
//                     Row(
//                       children: [
//                         Expanded(
//                           child: Divider(
//                             color: Color(0XFF9C9C9C),
//                             thickness: 1,
//                             indent: 1,
//                             endIndent: 1,
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.symmetric(horizontal: 15),
//                           child: Text("OR"),
//                         ),
//                         Expanded(
//                           child: Divider(
//                             color: Color(0XFF9C9C9C),
//                             thickness: 1,
//                             indent: 1,
//                             endIndent: 1,
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: 20),
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
//                     SizedBox(height: 10),
//                     Text(
//                       "Confirm your password ",
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
//                     SizedBox(height: 20),
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Color(0xff4b3278),
//                         minimumSize: Size(370, 60),
//                       ),
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => Signup1()),
//                         );
//                       },
//                       child: Text(
//                         " Sign up",
//                         style: TextStyle(color: Colors.white, fontSize: 25),
//                       ),
//                     ),
//                     Expanded(
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text(
//                             "Already have an account ?",
//                             style: TextStyle(
//                               fontWeight: FontWeight.w900,
//                               fontSize: 15,
//                             ),
//                           ),
//                           TextButton(
//                             onPressed: () {
//                               GoRouter.of(
//                                 context,
//                               ).push(ConstRouterApp.idLoginView);
//                             },
//                             child: Text(
//                               "Login",
//                               style: TextStyle(
//                                 fontWeight: FontWeight.w900,
//                                 color: Color(0xff65558f),
//                                 fontSize: 15,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
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
