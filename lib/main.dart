import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:park_lion/core/go_router/app_router.dart';
import 'package:park_lion/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(Parklion());
}

class Parklion extends StatelessWidget {
  const Parklion({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}
