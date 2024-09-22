import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_playground/screens/tab/tab_screen.dart';

import 'login/login_screen.dart';

class RouteScreen extends StatelessWidget {
  const RouteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (BuildContext context, AsyncSnapshot<User?> user) {
        if (user.hasData) {
          return const TabScreen();
        } else {
          return const LoginScreen();
        }
      },
    );
  }
}