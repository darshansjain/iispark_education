import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iispark_edu/screen/sign_up_2_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Spacer(),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                    ),
                    Image.asset(
                      "asset/b1.png",
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                    Image.asset("asset/signup1.png")
                  ],
                ),
                const SizedBox(height: 40),
                Text(
                  "Let's find the \"A\" with us",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.exo(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Please Sign in to view personalized recommendations",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.exo(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                const Spacer(),
                Column(
                  children: [
                    SizedBox(
                      width: 250,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: () {
                          print("Sign Up");
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const SignUp2Screen()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(86, 103, 253, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                        ),
                        child: Text(
                          'Sign up',
                          style: GoogleFonts.exo(
                              fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextButton(
                      onPressed: () {
                        // Handle skip action
                      },
                      child: Text(
                        'Skip',
                        style:
                            GoogleFonts.exo(fontSize: 16, color: Colors.blue),
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
