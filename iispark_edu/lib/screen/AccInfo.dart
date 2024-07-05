import 'package:flutter/material.dart';
import 'package:iispark_edu/screen/PassUpRes.dart';
import 'package:iispark_edu/screen/UpdateEmail.dart';

class AccInfo extends StatefulWidget {
  const AccInfo({super.key});

  @override
  State<AccInfo> createState() => _AccInfoState();
}

class _AccInfoState extends State<AccInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Account information',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(55.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(" Profile Name"),
              const SizedBox(
                height: 3,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Profile name',
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text(" Email Id"),
              const SizedBox(
                height: 3,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email id',
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text('Grade', style: TextStyle(fontSize: 16)),
              const SizedBox(height: 8),
              const GradeDropdown(
                label: 'Grade 5 - 7',
              ),
              const SizedBox(height: 16),
              const GradeDropdown(
                label: 'Grade 8 - 10',
              ),
              const SizedBox(height: 16),
              const Text(
                '*If you change the grade, the levels will be reset automatically.',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              const SizedBox(height: 25),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const UpdateEmail()));
                },
                child: const Text(
                  'Update email address',
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  // Handle add links
                },
                child: const Text(
                  'Add links',
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  // Handle password update or reset
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PassUpRes()));
                },
                child: const Text(
                  'Password update or reset',
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GradeDropdown extends StatelessWidget {
  final String label;

  const GradeDropdown({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
      child: DropdownButton<String>(
        value: label,
        isExpanded: true,
        underline: const SizedBox(),
        items: <String>[
          'Grade 5 - 7',
          'Grade 8 - 10',
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (String? newValue) {
          // Handle change
        },
      ),
    );
  }
}
