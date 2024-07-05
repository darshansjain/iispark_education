// import 'package:flutter/material.dart';

// class GetProd extends StatelessWidget {
//   final Map<String, dynamic> product;

//   const GetProd({required this.product});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Center(
//             child: Text(
//           'ASTEROID',
//           style: TextStyle(fontWeight: FontWeight.bold),
//         )),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.search),
//             onPressed: () {
//               // Handle search action
//             },
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Center(
//                     child: Image.asset(
//                       'assets/asteroid.png',
//                       height: 500,
//                       width: 160,
//                     ),
//                   ),
//                   const SizedBox(width: 5),
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       _buildThumbnail('assets/asteroid.png'),
//                       _buildThumbnail('assets/asteroid.png'),
//                       _buildThumbnail('assets/asteroid.png'),
//                       _buildThumbnail('assets/asteroid.png'),
//                     ],
//                   ),
//                   const SizedBox(height: 20),
//                 ],
//               ),
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   const Padding(
//                     padding: EdgeInsets.only(right: 380),
//                     child: Text(
//                       '₹ 26,330',
//                       style: TextStyle(
//                         fontSize: 24,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.orange,
//                       ),
//                     ),
//                   ),
//                   const Padding(
//                     padding: EdgeInsets.only(right: 350),
//                     child: Text(
//                       '(Incl of all taxes)',
//                       style: TextStyle(
//                         fontSize: 16,
//                         color: Colors.grey,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 20),
//                   const Padding(
//                     padding: EdgeInsets.only(right: 420),
//                     child: Text(
//                       'Color',
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(right: 322),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         _buildColorOption(Colors.orange),
//                         _buildColorOption(Colors.black),
//                         _buildColorOption(Colors.red),
//                         _buildColorOption(Colors.yellow),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(height: 20),
//                   const Padding(
//                     padding: EdgeInsets.only(right: 333),
//                     child: Text(
//                       'Size (Free Size)',
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 10),
//                   const Padding(
//                     padding: EdgeInsets.only(right: 425),
//                     child: Text(
//                       'Free',
//                       style: TextStyle(
//                         fontSize: 16,
//                         color: Colors.grey,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 20),
//                   const Padding(
//                     padding: EdgeInsets.only(right: 380),
//                     child: Text(
//                       'Description',
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 10),
//                   const Text(
//                     'Introducing Fire-Boltt Cyclone, which comes in vibrant colors. It features a 40.6mm (1.6”) HD round display, Bluetooth calling, motion sensor gaming, always-on display, assisted GPS, NFC access door control, and much more.',
//                     style: TextStyle(
//                       fontSize: 16,
//                       color: Colors.grey,
//                     ),
//                   ),
//                   const SizedBox(height: 20),
//                   Center(
//                     child: ElevatedButton(
//                       onPressed: () {
//                         // Handle buy action
//                       },
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.blue,
//                         padding: const EdgeInsets.symmetric(
//                             horizontal: 50, vertical: 15),
//                       ),
//                       child: const Text(
//                         'Buy',
//                         style: TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildThumbnail(String imagePath) {
//     return Padding(
//       padding: const EdgeInsets.all(4.0),
//       child: Container(
//         width: 50,
//         height: 50,
//         decoration: BoxDecoration(
//           border: Border.all(color: Colors.grey),
//           borderRadius: BorderRadius.circular(8),
//         ),
//         child: Image.asset(imagePath),
//       ),
//     );
//   }

//   Widget _buildColorOption(Color color) {
//     return Padding(
//       padding: const EdgeInsets.all(4.0),
//       child: Container(
//         width: 30,
//         height: 30,
//         decoration: BoxDecoration(
//           color: color,
//           shape: BoxShape.circle,
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class GetProd extends StatelessWidget {
  final Map<String, dynamic> product;

  const GetProd({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'ASTEROID',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Handle search action
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AspectRatio(
                aspectRatio: 3 / 2,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: Image.asset(
                        height: 390,
                        width: 300,
                        'asset/pie.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 30),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildThumbnail('asset/pie.png'),
                          _buildThumbnail('asset/pie.png'),
                          _buildThumbnail('asset/pie.png'),
                          _buildThumbnail('asset/pie.png'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                '₹ 26,330',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                '(Incl of all taxes)',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Color',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 200),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildColorOption(Colors.orange),
                    const SizedBox(
                      width: 10,
                    ),
                    _buildColorOption(Colors.black),
                    const SizedBox(
                      width: 10,
                    ),
                    _buildColorOption(Colors.red),
                    const SizedBox(
                      width: 10,
                    ),
                    _buildColorOption(Colors.yellow),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Size (Free Size)',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Free',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Description',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Introducing Fire-Boltt Cyclone, which comes in vibrant colors. It features a 40.6mm (1.6”) HD round display, Bluetooth calling, motion sensor gaming, always-on display, assisted GPS, NFC access door control, and much more.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Handle buy action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 150,
                      vertical: 15,
                    ),
                  ),
                  child: const Text(
                    'Buy',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildThumbnail(String imagePath) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(
          imagePath,
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildColorOption(Color color) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}
