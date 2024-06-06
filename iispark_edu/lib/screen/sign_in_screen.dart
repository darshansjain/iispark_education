import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:iispark_edu/main.dart';
import 'package:iispark_edu/screen/dob_screen.dart';
import 'package:iispark_edu/screen/home_screen.dart';
import 'package:iispark_edu/screen/sign_up_2_screen.dart';
import 'package:provider/provider.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  Future<void> _signInWithEmailAndPassword() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: _emailController.text.trim(),
              password: _passwordController.text.trim());
      final userId = userCredential.user!.uid;
      Provider.of<UserProvider>(context, listen: false).setUserId(userId);

      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Login successful!'),
      ));

      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (context) => MyHomePage(
                  title: "home",
                )),
      );
    } on FirebaseAuthException catch (e) {
      String message;
      if (e.code == 'user-not-found') {
        message = 'No user found for that email.';
      } else if (e.code == 'wrong-password') {
        message = 'Wrong password provided.';
      } else {
        message = 'An error occurred. Please try again.';
      }
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(message),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Spacer(),
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                      ),
                      Image.asset(
                        "asset/b2.png",
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ),
                      Image.asset("asset/signIn.png"),
                    ],
                  ),
                  const SizedBox(height: 35),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.03),
                          blurRadius: 6,
                          offset: Offset(0, 7),
                        ),
                      ],
                    ),
                    child: TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'Email address',
                        hintText: 'name@example.com',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email address';
                        } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                            .hasMatch(value)) {
                          return 'Please enter a valid email address';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: 25),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.03),
                          blurRadius: 6,
                          offset: Offset(0, 7),
                        ),
                      ],
                    ),
                    child: TextFormField(
                      controller: _passwordController,
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide.none,
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                          onPressed: _togglePasswordVisibility,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: 55),
                  SizedBox(
                    width: 260,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _signInWithEmailAndPassword();
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(86, 103, 253, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                      ),
                      child: Text(
                        'Sign in',
                        style:
                            GoogleFonts.exo(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account? ",
                        style:
                            GoogleFonts.exo(fontSize: 16, color: Colors.grey),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SignUp2Screen()));
                        },
                        child: Text(
                          'Sign up',
                          style:
                              GoogleFonts.exo(fontSize: 16, color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
