import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iispark_edu/screen/school_info_screen.dart';

class GradeAndSkillsScreen extends StatefulWidget {
  const GradeAndSkillsScreen({super.key});

  @override
  _GradeAndSkillsScreenState createState() => _GradeAndSkillsScreenState();
}

class _GradeAndSkillsScreenState extends State<GradeAndSkillsScreen> {
  String? selectedGrade;
  List<String> selectedSkills = [];

  final Map<String, List<String>> gradeSkills = {
    'Grade 5 - 7': [],
    'Grade 8 - 10': ['Arts', 'Science', 'Maths', 'Commerce', 'English']
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width,
              ),
              Text(
                "What's your grade and Skills?",
                style: GoogleFonts.exo(fontSize: 18, color: Colors.black),
              ),
              const SizedBox(height: 30),
              _buildGradeButtons(),
              const SizedBox(height: 20),
              if (selectedGrade != null &&
                  gradeSkills[selectedGrade!]!.isNotEmpty)
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: _buildSkillsGrid()),
              const Spacer(),
              SizedBox(
                width: 260,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SchoolInfo()));
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
        ),
      ),
    );
  }

  Widget _buildGradeButtons() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: gradeSkills.keys.map((grade) {
        final isSelected = selectedGrade == grade;
        return Container(
          height: 50,
          margin: const EdgeInsets.symmetric(vertical: 10.0),
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
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                selectedGrade = grade;
                selectedSkills.clear();
              });
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: isSelected ? Colors.white : Colors.black,
              backgroundColor: isSelected ? Colors.blue : Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              //padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            ),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                grade,
                style: TextStyle(
                  fontSize: 16,
                  color: isSelected ? Colors.white : Colors.black,
                ),
              ),
              const Spacer(),
              const Icon(Icons.arrow_downward),
              const SizedBox(
                width: 5.0,
              )
            ]),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildSkillsGrid() {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: gradeSkills[selectedGrade!]!.map((skill) {
        final isSelected = selectedSkills.contains(skill);
        return FilterChip(
          label: Text("🎨 $skill"),
          selected: isSelected,
          onSelected: (selected) {
            setState(() {
              if (selected) {
                selectedSkills.add(skill);
              } else {
                selectedSkills.remove(skill);
              }
            });
          },
        );
      }).toList(),
    );
  }
}
