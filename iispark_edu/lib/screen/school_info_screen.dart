import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iispark_edu/main.dart';
import 'package:iispark_edu/screen/home_screen.dart';
import 'package:provider/provider.dart';

class SchoolInfo extends StatefulWidget {
  const SchoolInfo({super.key});

  @override
  State<SchoolInfo> createState() => _SchoolInfoState();
}

class _SchoolInfoState extends State<SchoolInfo> {
  final TextEditingController _stateController = TextEditingController();
  final TextEditingController _schoolController = TextEditingController();
  final TextEditingController _districtController = TextEditingController();
  final TextEditingController _mandalController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  final FirebaseDatabase _database = FirebaseDatabase(
    databaseURL: "hhttps://iispark-edu-default-rtdb.firebaseio.com/",
  );

  void _saveSchoolData(context) async {
    final userId = Provider.of<UserProvider>(context, listen: false).userId;
    if (_formKey.currentState!.validate()) {
      await _database.reference().child('users').child(userId!).update({
        'schoolName': _schoolController.text.trim(),
        'district': _districtController.text.trim(),
        'mandal': _mandalController.text.trim(),
        'State': _stateController.text.trim(),
      });

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('School data saved!')),
      );

      // Navigate to the next screen or perform another action
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => MyHomePage(title: "home")));
    }
  }

  @override
  Widget build(BuildContext context) {
    //final userId = Provider.of<UserProvider>(context, listen: false).userId;
    return Scaffold(
      body: SafeArea(
          child: Form(
        key: _formKey,
        child: Column(
          children: [
            SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width,
            ),
            Text(
              "Enter your school details",
              style: GoogleFonts.exo(fontSize: 18, color: Colors.black),
            ),
            const SizedBox(
              height: 35,
            ),
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
                controller: _schoolController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: ' School Name',
                  hintText: 'school name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your school name';
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
                controller: _stateController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'State',
                  hintText: 'state',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter state name';
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
                controller: _districtController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'District',
                  hintText: 'District',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name of district';
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
                controller: _mandalController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Mandal',
                  hintText: 'mandal',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter mandal';
                  }
                  return null;
                },
              ),
            ),
            const Spacer(),
            SizedBox(
              width: 260,
              child: ElevatedButton(
                onPressed: () {
                  _saveSchoolData(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(86, 103, 253, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                ),
                child: Text(
                  'Next',
                  style: GoogleFonts.exo(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 17),
            TextButton(
              onPressed: () {
                // Handle skip action
              },
              child: Text(
                'Skip',
                style: GoogleFonts.exo(fontSize: 18, color: Colors.blue),
              ),
            ),
            const SizedBox(height: 25),
          ],
        ),
      )),
    );
  }
}
