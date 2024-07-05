import 'package:flutter/material.dart';

import 'package:iispark_edu/screen/Lang.dart';
import 'package:iispark_edu/screen/Settings.dart';
import 'package:iispark_edu/screen/Skills.dart';
import 'package:iispark_edu/screen/AccInfo.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 150,
            ),
            Container(
                height: 160, width: 250, child: Image.asset("asset/pie.png")),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "BitSpace",
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
          ],
        ),
      ),
    ));
  }
}
