import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iispark_edu/main.dart';
import 'package:iispark_edu/screen/grade_screen.dart';
import 'package:provider/provider.dart';

class DateOfBirthScreen extends StatefulWidget {
  const DateOfBirthScreen({super.key});

  @override
  _DateOfBirthScreenState createState() => _DateOfBirthScreenState();
}

class _DateOfBirthScreenState extends State<DateOfBirthScreen> {
  final TextEditingController _dayController = TextEditingController();
  final TextEditingController _monthController = TextEditingController();
  final TextEditingController _yearController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  final FirebaseDatabase _database = FirebaseDatabase(
    databaseURL:
        "https://iinspark-edu-default-rtdb.asia-southeast1.firebasedatabase.app/",
  );

  Future<void> _saveDateOfBirth() async {
    final userId = Provider.of<UserProvider>(context, listen: false).userId;
    if (_formKey.currentState!.validate()) {
      String day = _dayController.text;
      String month = _monthController.text;
      String year = _yearController.text;

      await _database.reference().child('users').child(userId!).update({
        'dateOfBirth': '$year-$month-$day',
      });

      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const GradeAndSkillsScreen()));

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Date of birth saved!')),
      );

      // Navigate to the next screen or perform another action
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(
                      height: 50,
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
                        Image.asset("asset/signup1.png"),
                      ],
                    ),
                    const SizedBox(height: 40),
                    Text(
                      'Date of birth',
                      style: GoogleFonts.exo(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildDateField(context, 'Day', _dayController),
                          _buildDateField(context, 'Month', _monthController),
                          _buildDateField(context, 'Year', _yearController),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
                    SizedBox(
                      width: 260,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: _saveDateOfBirth,
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(86, 103, 253, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                        ),
                        child: const Text(
                          'Continue',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDateField(
      BuildContext context, String label, TextEditingController controller) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.25,
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
        controller: controller,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: label,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide.none,
          ),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter $label';
          }
          if (label == 'Day' &&
              (int.tryParse(value) == null ||
                  int.parse(value) < 1 ||
                  int.parse(value) > 31)) {
            return 'Invalid day';
          }
          if (label == 'Month' &&
              (int.tryParse(value) == null ||
                  int.parse(value) < 1 ||
                  int.parse(value) > 12)) {
            return 'Invalid month';
          }
          if (label == 'Year' &&
              (int.tryParse(value) == null ||
                  int.parse(value) < 1900 ||
                  int.parse(value) > DateTime.now().year)) {
            return 'Invalid year';
          }
          return null;
        },
      ),
    );
  }
}
