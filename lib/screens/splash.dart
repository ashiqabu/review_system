import 'package:flutter/material.dart';
import 'package:review_system_kottakal_om/screens/landing_screen.dart'; // Import the widgets library for Duration

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const splashDuration = Duration(seconds: 3);

    void navigateToNextScreen() {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const LandingScreen(),
        ),
      );
    }

    Future<void>.delayed(splashDuration, navigateToNextScreen);

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.white,
            Color.fromARGB(255, 65, 163, 69),
          ], begin: Alignment.topRight, end: Alignment.bottomLeft),
        ),
        child: Padding(
          padding: const EdgeInsets.all(100.0),
          child: Image.asset(
            'assets/logo.png',
          ),
        ),
      ),
    );
  }
}
