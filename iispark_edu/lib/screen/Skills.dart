// import 'package:flutter/material.dart';

// class Skills extends StatefulWidget {
//   const Skills({super.key});

//   @override
//   State<Skills> createState() => _SkillsState();
// }

// class _SkillsState extends State<Skills> {
//   @override
//   List<String> skills = [
//     'Arts',
//     'Science',
//     'Maths',
//     'Commerce',
//     'English',
//     'History',
//     'Geography',
//     'Physics'
//   ];
//   Set<String> selectedSkills = Set();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Skills'),
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back),
//           onPressed: () {
//             // Handle back button press
//           },
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             Container(
//               padding: const EdgeInsets.all(16),
//               decoration: BoxDecoration(
//                 color: Colors.grey[200],
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Text('Skills', style: TextStyle(fontSize: 16)),
//                   const SizedBox(height: 8),
//                   GridView.builder(
//                     shrinkWrap: true,
//                     physics: const NeverScrollableScrollPhysics(),
//                     gridDelegate:
//                         const SliverGridDelegateWithFixedCrossAxisCount(
//                       crossAxisCount: 2,
//                       childAspectRatio: 3,
//                       crossAxisSpacing: 8,
//                       mainAxisSpacing: 8,
//                     ),
//                     itemCount: skills.length,
//                     itemBuilder: (context, index) {
//                       String skill = skills[index];
//                       bool isSelected = selectedSkills.contains(skill);
//                       return GestureDetector(
//                         onTap: () {
//                           setState(() {
//                             if (isSelected) {
//                               selectedSkills.remove(skill);
//                             } else {
//                               selectedSkills.add(skill);
//                             }
//                           });
//                         },
//                         child: Container(
//                           decoration: BoxDecoration(
//                             color: isSelected ? Colors.blue : Colors.grey[300],
//                             borderRadius: BorderRadius.circular(8),
//                           ),
//                           child: Center(
//                             child: Text(
//                               skill,
//                               style: TextStyle(
//                                 color: isSelected ? Colors.white : Colors.black,
//                               ),
//                             ),
//                           ),
//                         ),
//                       );
//                     },
//                   ),
//                 ],
//               ),
//             ),
//             const Spacer(),
//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                 onPressed: () {
//                   // Handle save button press
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.blue,
//                   padding: const EdgeInsets.symmetric(vertical: 16),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                 ),
//                 child: const Text('Save', style: TextStyle(fontSize: 16)),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class Skills extends StatefulWidget {
  const Skills({super.key});

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  List<String> skills = [
    'Arts',
    'Science',
    'Maths',
    'Commerce',
    'English',
    'History',
    'Geography',
    'Physics'
  ];
  Set<String> selectedSkills = Set();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Skills'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Skills', style: TextStyle(fontSize: 16)),
                  const SizedBox(height: 8),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 3,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                    ),
                    itemCount: skills.length,
                    itemBuilder: (context, index) {
                      String skill = skills[index];
                      bool isSelected = selectedSkills.contains(skill);
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            if (isSelected) {
                              selectedSkills.remove(skill);
                            } else {
                              selectedSkills.add(skill);
                            }
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: isSelected ? Colors.blue : Colors.grey[300],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              skill,
                              style: TextStyle(
                                color: isSelected ? Colors.white : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Handle save button press
                  // For now, just print the selected skills
                  print("Selected skills: $selectedSkills");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text('Save', style: TextStyle(fontSize: 16)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
