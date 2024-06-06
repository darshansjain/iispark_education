import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:iispark_edu/main.dart';
import 'package:iispark_edu/screen/dob_screen.dart';
import 'package:iispark_edu/screen/sign_in_screen.dart';
import 'package:provider/provider.dart';

class SignUp2Screen extends StatefulWidget {
  @override
  _SignUp2ScreenState createState() => _SignUp2ScreenState();
}

class _SignUp2ScreenState extends State<SignUp2Screen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool loading = false;

  bool _obscureText = true;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseDatabase _database = FirebaseDatabase(
    databaseURL: "hhttps://iispark-edu-default-rtdb.firebaseio.com/",
  );

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  Future<void> _signUp() async {
    if (_formKey.currentState!.validate()) {
      try {
        setState(() {
          loading = true;
        });
        // Create user with email and password
        UserCredential userCredential =
            await _auth.createUserWithEmailAndPassword(
          email: _emailController.text.toString(),
          password: _passwordController.text.toString(),
        );

        final userId = userCredential.user!.uid;
        Provider.of<UserProvider>(context, listen: false).setUserId(userId);
        // Save user's name and email in Realtime Database
        await _database
            .reference()
            .child('users')
            .child(userCredential.user!.uid)
            .set({
          'name': _nameController.text.toString(),
          'email': _emailController.text.toString(),
        });

        // Navigate to DateOfBirthScreen
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Sign up successful!')),
        );
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => DateOfBirthScreen()),
        );
      } catch (e) {
        setState(() {
          loading = true;
        });
        // Handle errors
        print(e);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to sign up: $e')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const SizedBox(height: 15),
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
                        Image.asset("asset/signup1.png"),
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
                        controller: _nameController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          labelText: 'Name',
                          hintText: 'Your name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your name';
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
                        onPressed: _signUp,
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(86, 103, 253, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                        ),
                        child: !loading
                            ? Text(
                                'Sign Up',
                                style: GoogleFonts.exo(
                                    fontSize: 18, color: Colors.white),
                              )
                            : const CircularProgressIndicator(),
                      ),
                    ),
                    const SizedBox(height: 15),
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
                                builder: (context) => SignInScreen()));
                          },
                          child: Text(
                            'Sign in',
                            style: GoogleFonts.exo(
                                fontSize: 16, color: Colors.blue),
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
      ),
    );
  }
}
