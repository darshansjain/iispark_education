import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:iispark_edu/screen/Lang.dart';
import 'package:iispark_edu/screen/Settings.dart';
import 'package:iispark_edu/screen/Skills.dart';
import 'package:iispark_edu/screen/AccInfo.dart';
import 'package:iispark_edu/screen/sign_up_screen.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  Future<void> _signOut() async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => SignUpScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Color.fromRGBO(86, 103, 253, 1))),
                height: 130,
                width: 130,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                      "https://s3-alpha-sig.figma.com/img/67e4/eaf1/5b43c1f28163e5266ab0bbbc00c51b48?Expires=1721001600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=pVfZxW2E1DqW-KX45UBAjLw3IGyZKOUWDKc1Ab-wzc15yEuzAkj5w4k5wIYkJfBp6PZQpE7v3KiC6R8R8uIt4KEZ9QQuuqQMJsO73G358bEJmoVk8Zmk~yYxVsZz4STcGpRx9s5ot1hnHP1CRAaQzFD~SM5zD0vYxeJzP0Fxz6-S~NgAoSkOWMVs5Rd5Zasi3DOOwlgvq1EKMvxKzx4Idamj7ycj0YGoOsL6rjZbzMZ~VEtZcRSNJ3SG~5mTI4d5poI2oMAS91ShHD0NW2iWoXbPR5K-M6JH4Pw2DI7EjbZlwATw2u8X0HoSj22YZnDfhWCEDHo9i9rtKTWUwHffFA__"),
                )),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Darshan",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            const Text(
              "bitspace123@gmail.com",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
                width: 250,
                height: 35,
                decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Level 01 of 50",
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Image.asset("asset/doller.png"),
                    const SizedBox(
                      width: 8,
                    ),
                    const Text(
                      "330",
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                )),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 350,
              child: TextButton.icon(
                icon: const Icon(Icons.man, color: Colors.black),
                label: const Text(
                  "Account Information                                    >",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AccInfo()),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 1),
              child: Container(
                width: 350,
                child: TextButton.icon(
                  icon: const Icon(Icons.book, color: Colors.black),
                  label: const Text(
                    "Skills                                                               >",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Skills()));
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Container(
                width: 350,
                child: TextButton.icon(
                  icon: const Icon(Icons.language, color: Colors.black),
                  label: const Text(
                    "Profile Language                                          >",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    // Handle button press
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Lang()));
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 7),
              child: Container(
                width: 350,
                child: TextButton.icon(
                  icon: const Icon(Icons.help, color: Colors.black),
                  label: const Text(
                    "Help and Support                                          >",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    // Handle button press
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Container(
                width: 350,
                child: TextButton.icon(
                  icon: const Icon(Icons.settings, color: Colors.black),
                  label: const Text(
                    "Settings                                                         >",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    // Handle button press
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Settings()));
                  },
                ),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            SizedBox(
              width: 250,
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  print("Log Out");
                  _signOut();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(86, 103, 253, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                ),
                child: Text(
                  'Log Out',
                  style: GoogleFonts.exo(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 18,
            )
          ],
        ),
      ),
    ));
  }
}
