import 'dart:async';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:iispark_edu/screen/sign_up_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:iispark_edu/screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late VideoPlayerController _controller;
  bool _isInitialized = false;

  @override
  void initState() {
    _checkUserStatus();
  }

  void _checkUserStatus() async {
    await Future.delayed(
        const Duration(seconds: 4)); // Simulate a delay for the splash screen
    User? user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      // User is signed in
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    } else {
      // User is not signed in
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const SignUpScreen()),
      );
    }
  }

  @override
  void dispose() {
    //_controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("asset/logo.png"),
          SizedBox(
            height: 15,
          ),
          Text(
            "IInspark Edu",
            style: TextStyle(
                color: const Color.fromRGBO(139, 82, 255, 1),
                fontSize: 25,
                fontWeight: FontWeight.bold),
          )
        ],
      )),
    ));
  }
}
