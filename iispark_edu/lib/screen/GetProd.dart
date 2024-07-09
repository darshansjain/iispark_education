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
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(217, 217, 217, 0.4)),
                        child: Image.network(
                          height: 300,
                          width: 300,
                          'https://s3-alpha-sig.figma.com/img/d7bf/3be6/26872090f18155ce93ad8b4d64b25b6a?Expires=1721001600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=OxVkxr5xtux7nqtji22EveAsOjW~Kbx3X9XRO53qPnsROUTcsRHLi98jR0lqbtdMbyDB3RuTdcmCNRqDWxamgU-xoIzGRVqo0GFSA16qlZOtHKIe22Bv1GXXhMCPP4vi6DU4NibWKah27f0k4rfl0QT5Q3x5ztBW4PnD~o1mMc7W0YMF9tA4lfcDsnRXlVdP7RElRujT4cQjxg3l0K9EmOXxLMP832JblQhDwdyn-s9fulprEF5NeRKIQ1kiSnNR6ZYuESLNGrjs7cE~BJMV9x50DJjxHE93ZMt2hLV~Vk0UVCmU33bef2k2ft6iLW8xE34ORZebLBD6fJZYTjaTXQ__',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    const SizedBox(width: 30),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildThumbnail(
                              'https://s3-alpha-sig.figma.com/img/d7bf/3be6/26872090f18155ce93ad8b4d64b25b6a?Expires=1721001600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=OxVkxr5xtux7nqtji22EveAsOjW~Kbx3X9XRO53qPnsROUTcsRHLi98jR0lqbtdMbyDB3RuTdcmCNRqDWxamgU-xoIzGRVqo0GFSA16qlZOtHKIe22Bv1GXXhMCPP4vi6DU4NibWKah27f0k4rfl0QT5Q3x5ztBW4PnD~o1mMc7W0YMF9tA4lfcDsnRXlVdP7RElRujT4cQjxg3l0K9EmOXxLMP832JblQhDwdyn-s9fulprEF5NeRKIQ1kiSnNR6ZYuESLNGrjs7cE~BJMV9x50DJjxHE93ZMt2hLV~Vk0UVCmU33bef2k2ft6iLW8xE34ORZebLBD6fJZYTjaTXQ__'),
                          _buildThumbnail(
                              'https://s3-alpha-sig.figma.com/img/0054/d1be/d3c7c740a3e4b738c84f861273742e0f?Expires=1721001600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=RD0QnEx0IKwyu4-7-Js7EhDPNni4QnEcfTtbWK3BTvc9BLa6vsL1iKhzhExVZy3r7LWvYqlTxBydifXvmXHKaDs6ErUTHAKFQLmzKeYyiUhwHXoSqt5GWR-xgbfYocCBpcq6c2y~6HRLvvjmzNeZgcD4i3~dYyAfcr1dw0NzqTc8mIyDD8fACQLClfy-jmGk7uZrYS2fhMrd0TB7IjDoH3q1M6Kgk8xpLuvrFdNaTlq0tFXsjNwe2e0T-JJj8W1GZEYp6nzo2YnkUuDYWSltXCunXlN5XdiTeOu6H84MBSKuJTMGdSq2nrfFKLMQi-O7npiyJGb8oo8suVsqn3rt-g__'),
                          _buildThumbnail(
                              'https://s3-alpha-sig.figma.com/img/d0a0/b6e8/7bd7973e623211881973c210029f9cc9?Expires=1721001600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=OU-0ziL5kIIHa8CMvYQHsQxW9WsoWR5oShJ90PpUhuo~rpw-D53azoSUNQpPC6xXyTNMLeska4wQAINM67TgeDBIIAG0C7C3lc4WI6jnJ4omcDUl82iA08aiWTK5may-ZociQxqwSngkUwEK0f9TfBy5IIqbPKClrdJ443qqb-6mjw4KELTec3PoGoKyGCp0oy-urzgAitNNYWCs0UoVqmvZq5L2XU-5g~IV8OVlKyN2zK1zARwqNf0c37SkesPo-qHyFyJLUnLhBFJ97bfOnl8jlKpDUoHFTfFWNAcrG-CJts2rGs56LGfkKlAOQ9-fbQOUQrq7-bD0rhIQIYJ4Jg__'),
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
        child: Container(
          color: Color.fromRGBO(217, 217, 217, 0.4),
          child: Image.network(
            imagePath,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
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
