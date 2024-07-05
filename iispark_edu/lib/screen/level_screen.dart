import 'package:flutter/material.dart';

class LevelScreen extends StatelessWidget {
  const LevelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: const Alignment(0.66, 0.07),
              end: const Alignment(0.31, 0.83),
              colors: [
                Theme.of(context).colorScheme.onPrimary,
                Colors.deepPurple[700]!,
                Colors.deepPurpleAccent[400]!,
              ],
            ),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              const CustomImageView(
                imagePath:
                    'https://s3-alpha-sig.figma.com/img/0182/c74e/54399ed7c42f6fea343b84311496d114?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=j-IqOzJw~-PRZxBmkrq7M4nCHl9-PEaKG0I1hlOIeEJDyzCZMFSNZ7k1xJYHAPAzG~OJ7501ZoNBlFRxbr0L0qnajiGP2tCKxJ1bb4u0uu4bcXX3lXQIIdiRD5holDLHAhTVeVZAB68jz6bQHdBESQDa8joRZypOkPkbITkFxhZN3zOsqLlySkz7m1CwA9q9lwI5ofNdD72uXVay6UYYTX1l5mnkPlZk0UfJN5N9iAj0GquXeGpoSuUedh7uX-pIwie87U0bv4ws-x30NUP0mkCoXW8b2ZDx0nXm75Xtd-3h3a1q9gBOIGIac3CruzolayI8-VSQSr6n4vAXx1OZ6A__',
                height: 878,
                width: double.maxFinite,
              ),
              SingleChildScrollView(
                child: SizedBox(
                  height: 992,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 832,
                          margin: const EdgeInsets.only(top: 20),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              _buildImageVectorStack(context),
                              _buildImageViewStack(context),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: _buildImageVectorStack(context),
                              ),
                              const CustomElevatedButton(
                                height: 42,
                                width: 146,
                                text: "Level 01",
                                alignment: Alignment.topCenter,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 992,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            const Opacity(
                              opacity: 0.12,
                              child: CustomImageView(
                                imagePath: 'assets/images/imgImage10.png',
                                height: 170,
                                width: double.maxFinite,
                                alignment: Alignment.bottomLeft,
                                margin: EdgeInsets.only(left: 56, bottom: 78),
                              ),
                            ),
                            const CustomImageView(
                              imagePath: 'assets/images/imgEllipse87.png',
                              height: 210,
                              width: 136,
                              alignment: Alignment.bottomLeft,
                              margin: EdgeInsets.only(bottom: 50),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                width: 398,
                                margin: const EdgeInsets.only(top: 116),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    SizedBox(
                                      height: 580,
                                      width: 362,
                                      child: Stack(
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          CustomImageView(
                                            imagePath:
                                                'assets/images/imgVector.png',
                                            height: 406,
                                            width: 192,
                                            radius: BorderRadius.circular(2),
                                            alignment: Alignment.topCenter,
                                            margin: const EdgeInsets.only(top: 20),
                                          ),
                                          CustomImageView(
                                            imagePath:
                                                'assets/images/imgVector9.png',
                                            height: 176,
                                            width: 206,
                                            radius: BorderRadius.circular(2),
                                          ),
                                          const CustomImageView(
                                            imagePath:
                                                'assets/images/imgGroup48095799.png',
                                            height: 42,
                                            width: 42,
                                            alignment: Alignment.topRight,
                                            margin: EdgeInsets.only(right: 62),
                                          ),
                                          const CustomImageView(
                                            imagePath:
                                                'assets/images/imgGroup48095799.png',
                                            height: 42,
                                            width: 42,
                                            alignment: Alignment.topLeft,
                                            margin: EdgeInsets.only(
                                                left: 64, top: 202),
                                          ),
                                          const CustomImageView(
                                            imagePath:
                                                'assets/images/imgGroup48095799.png',
                                            height: 42,
                                            width: 42,
                                            alignment: Alignment.bottomRight,
                                            margin: EdgeInsets.only(
                                                right: 48, bottom: 156),
                                          ),
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 48, top: 2),
                                              child: Text(
                                                "Video",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleLarge,
                                              ),
                                            ),
                                          ),
                                          const CustomElevatedButton(
                                            height: 50,
                                            width: 170,
                                            text: "Practical",
                                            margin: EdgeInsets.only(top: 188),
                                            buttonStyle:
                                                CustomButtonStyles.none,
                                            decoration: CustomButtonStyles
                                                .gradientCyanToIndigoADecoration,
                                            // buttonTextStyle: Theme.of(context).textTheme.titleLarge,
                                            alignment: Alignment.topRight,
                                          ),
                                          Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Container(
                                              height: 54,
                                              width: 170,
                                              margin:
                                                  const EdgeInsets.only(bottom: 144),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                gradient: LinearGradient(
                                                  begin: const Alignment(0.5, 0),
                                                  end: const Alignment(0.5, 1),
                                                  colors: [
                                                    Colors.amber[500]!,
                                                    Colors.deepOrange[400]!,
                                                  ],
                                                ),
                                              ),
                                              child: const CustomImageView(
                                                imagePath:
                                                    'assets/images/imgVector.png',
                                                height: 102,
                                                width: 96,
                                                alignment: Alignment.topRight,
                                                margin: EdgeInsets.only(
                                                    top: 86, right: 106),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Container(
                                        width: 134,
                                        padding:
                                            const EdgeInsets.symmetric(vertical: 8),
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/imgGroup3.png'),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        child: const Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  'assets/images/imgEllipse88.png',
                                              height: 210,
                                              width: double.maxFinite,
                                            ),
                                            SizedBox(height: 34),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const CustomImageView(
                                      imagePath: 'assets/images/imgGroup3.png',
                                      height: 102,
                                      width: 90,
                                      alignment: Alignment.topLeft,
                                      margin:
                                          EdgeInsets.only(left: 30, top: 224),
                                    ),
                                    const CustomImageView(
                                      imagePath: 'assets/images/imgVector.png',
                                      height: 128,
                                      width: 120,
                                      alignment: Alignment.topRight,
                                      margin: EdgeInsets.only(right: 8),
                                    ),
                                    const CustomImageView(
                                      imagePath:
                                          'assets/images/imgClipPathGroup.png',
                                      height: 148,
                                      width: 100,
                                      alignment: Alignment.topRight,
                                      margin: EdgeInsets.only(top: 12),
                                    ),
                                    const CustomImageView(
                                      imagePath: 'assets/images/imgGroup3.png',
                                      height: 142,
                                      width: 112,
                                      alignment: Alignment.topRight,
                                      margin: EdgeInsets.only(top: 358),
                                    ),
                                    const CustomElevatedButton(
                                      height: 50,
                                      width: 266,
                                      text: "Start",
                                      margin: EdgeInsets.only(bottom: 138),
                                      //buttonStyle: CustomButtonStyles.outlinePrimary,
                                      buttonTextStyle:
                                          CustomTextStyles.titleLargeIndigoA200,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImageVectorStack(BuildContext context) {
    return const SizedBox(
      height: 322,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Opacity(
            opacity: 0.12,
            child: CustomImageView(
              imagePath: 'assets/images/imgImage7.png',
              height: 322,
              width: double.maxFinite,
            ),
          ),
          CustomImageView(
            imagePath: 'assets/images/imgVector.png',
            height: 102,
            width: 96,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(top: 94, right: 106),
          ),
        ],
      ),
    );
  }

  Widget _buildImageViewStack(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 322,
        margin: const EdgeInsets.only(top: 12),
        child: Stack(
          alignment: Alignment.center,
          children: [
            const Opacity(
              opacity: 0.12,
              child: CustomImageView(
                imagePath: 'assets/images/imgImage7.png',
                height: 322,
                width: double.maxFinite,
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: 54,
                width: 170,
                margin: const EdgeInsets.only(left: 30, top: 74),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  gradient: LinearGradient(
                    begin: const Alignment(0.5, 0),
                    end: const Alignment(0.5, 1),
                    colors: [
                      Colors.redAccent[200]!,
                      Colors.pink[300]!,
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomImageView extends StatelessWidget {
  final String imagePath;
  final double height;
  final double width;
  final Alignment alignment;
  final EdgeInsets margin;
  final BorderRadius radius;

  const CustomImageView({super.key, 
    required this.imagePath,
    required this.height,
    required this.width,
    this.alignment = Alignment.center,
    this.margin = EdgeInsets.zero,
    this.radius = BorderRadius.zero,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: height,
      width: width,
      alignment: alignment,
      decoration: BoxDecoration(
        borderRadius: radius,
        image: DecorationImage(
          image: NetworkImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class CustomElevatedButton extends StatelessWidget {
  final double height;
  final double width;
  final String text;
  final Alignment alignment;
  final EdgeInsets margin;
  final ButtonStyle buttonStyle;
  final TextStyle buttonTextStyle;
  final BoxDecoration decoration;

  const CustomElevatedButton({super.key, 
    required this.height,
    required this.width,
    required this.text,
    this.alignment = Alignment.center,
    this.margin = EdgeInsets.zero,
    this.buttonStyle = const ButtonStyle(),
    this.buttonTextStyle = const TextStyle(),
    this.decoration = const BoxDecoration(),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: height,
      width: width,
      alignment: alignment,
      decoration: decoration,
      child: ElevatedButton(
        style: buttonStyle,
        onPressed: () {},
        child: Text(text, style: buttonTextStyle),
      ),
    );
  }
}

class CustomButtonStyles {
  static const ButtonStyle none = ButtonStyle();
  static const BoxDecoration gradientCyanToIndigoADecoration = BoxDecoration();
  static const BoxDecoration outlinePrimary = BoxDecoration();
}

class CustomTextStyles {
  static const TextStyle titleLargeIndigoA200 = TextStyle();
}


 // @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Background Gradient
//           Container(
//             decoration: const BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [
//                   Color.fromRGBO(46, 61, 193, 1),
//                   Color.fromRGBO(70, 60, 177, 1),
//                   Color.fromRGBO(108, 52, 225, 1),
//                 ],
//                 begin: Alignment.topCenter,
//                 end: Alignment.bottomCenter,
//               ),
//             ),
//           ),
//           // Level Screen Content
//           Center(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16.0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Spacer(flex: 1),
//                   // Level Indicator
//                   Container(
//                     padding: const EdgeInsets.symmetric(
//                         vertical: 8.0, horizontal: 20.0),
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(20.0),
//                     ),
//                     child: const Text(
//                       'Level 01',
//                       style: TextStyle(
//                         fontSize: 18.0,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.blue,
//                       ),
//                     ),
//                   ),
//                   const Spacer(flex: 1),
//                   // Path Steps
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       GestureDetector(
//                         onTap: () {},
//                         child: Container(
//                             width: 170,
//                             height: 50,
//                             padding: const EdgeInsets.symmetric(
//                                 vertical: 15.0, horizontal: 20.0),
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(9.0),
//                                 gradient: const LinearGradient(
//                                   colors: [
//                                     Color.fromRGBO(255, 82, 82, 1),
//                                     Color.fromRGBO(255, 82, 165, 1)
//                                   ],
//                                   begin: Alignment.topCenter,
//                                   end: Alignment.bottomCenter,
//                                 )),
//                             child: const Text(
//                               "Video",
//                               textAlign: TextAlign.center,
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold),
//                             )),
//                       ),
//                       Image.asset("asset/Vector 8.png"),
//                     ],
//                   ),
//                   const Spacer(flex: 1),
//                   // Start Button
//                   GestureDetector(
//                     onTap: () {
//                       // Handle Start Button Tap
//                     },
//                     child: Container(
//                       width: double.infinity,
//                       padding: const EdgeInsets.symmetric(vertical: 15.0),
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(10.0),
//                       ),
//                       child: const Text(
//                         'Start',
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           fontSize: 18.0,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.blue,
//                         ),
//                       ),
//                     ),
//                   ),
//                   const Spacer(flex: 1),
//                 ],
//               ),
//             ),
//           ),
//           // Dashed Path Line
//         ],
//       ),
//     );
//   }
// }

// class LevelStep extends StatelessWidget {
//   final String label;
//   final Color color;
//   final bool showStar;

//   const LevelStep({
//     required this.label,
//     required this.color,
//     required this.showStar,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       alignment: Alignment.center,
//       children: [
//         CircleAvatar(
//           radius: 40,
//           backgroundColor: color,
//           child: label.isNotEmpty
//               ? Text(
//                   label,
//                   style: const TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 16.0,
//                   ),
//                 )
//               : null,
//         ),
//         if (showStar)
//           const Positioned(
//             right: 0,
//             bottom: 0,
//             child: Icon(
//               Icons.star,
//               color: Colors.yellow,
//               size: 24,
//             ),
//           ),
//       ],
//     );
//   }
// }

// class PathPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint()
//       ..color = Colors.white
//       ..strokeWidth = 2
//       ..style = PaintingStyle.stroke;

//     final dashPath = Path();
//     final dashHeight = 10.0;
//     final dashSpace = 5.0;
//     double startY = 150.0;
//     double endY = size.height - 150.0;

//     while (startY < endY) {
//       dashPath.moveTo(size.width / 2, startY);
//       dashPath.lineTo(size.width / 2, startY + dashHeight);
//       startY += dashHeight + dashSpace;
//     }

//     canvas.drawPath(dashPath, paint);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return false;
//   }
// }
