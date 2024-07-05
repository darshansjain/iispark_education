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
    super.initState();
    _controller = VideoPlayerController.network(
        'https://s3-figma-videos-production-sig.figma.com/video/1212366258565731645/TEAM/1478/063f/-565a-428e-a0aa-98c65877f80a?Expires=1717977600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=dFCP~~1zADq47tSK5y88X4Mf-vNh467l1Y9opbwnbZO3V1Gz0gup2Z6ZOJfSL4Pv1GEnFkA~WfI5RX0VSnwG5nt4CfY8gCwqxMmQO2HLGhV0XunGzCowWLRWHO4fwF98Uok5Rx5ac3APY~HMLYQzRFN5w7U~3sSE0cB4EByDTvP6yRKPHxrb9czj4xhyZrXcUIx2isj2hyQn4j4Ai3ThTcoT4ttDa1CLOVFJ0NMxtxB~IpQpsDPcPz7jg3mzxvltN2N8Yvo5yHY0CXqcXTboQy5v8KEI7yqWuC~LacVG1wqLMYbbPiG~Lj3Wt4rb3IOoDBwoBoFgnjSR3Vd~pbONvg__');

    _initializeVideo();
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

  Future<void> _initializeVideo() async {
    try {
      await _controller.initialize();
      setState(() {
        _isInitialized = true;
      });
      _controller.play();
    } catch (e) {
      // Handle initialization error
      print("Error initializing video: $e");
      // You can show an error message or navigate to a fallback screen here
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
      color: const Color.fromRGBO(139, 82, 255, 1),
      child: Center(
        child: _isInitialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                // child:// VideoPlayer(_controller),
              )
            : const CircularProgressIndicator(),
      ),
    ));
  }
}
