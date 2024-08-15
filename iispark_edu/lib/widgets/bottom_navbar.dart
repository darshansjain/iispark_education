import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:iispark_edu/screen/ShopProd.dart';
import 'package:iispark_edu/screen/googleform_quiz.dart';
//    import 'package:iispark_edu/home_screen.dart';
import 'package:iispark_edu/screen/home_screen.dart'; // Import your screens

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTabChange;

  const CustomBottomNavBar({
    Key? key,
    required this.selectedIndex,
    required this.onTabChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15, left: 58, right: 58),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(45),
        color: const Color.fromARGB(221, 74, 74, 2),
      ),
      child: GNav(
        rippleColor: Colors.grey[300]!,
        hoverColor: Colors.grey[100]!,
        gap: 8,
        activeColor: Colors.black,
        iconSize: 24,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        duration: const Duration(milliseconds: 400),
        tabBackgroundColor: Colors.grey[100]!,
        color: Colors.black,
        tabs: const [
          GButton(
            icon: Icons.home,
            iconColor: Colors.white,
            text: 'Home',
            textColor: Color.fromRGBO(86, 103, 253, 1),
            iconActiveColor: Color.fromRGBO(86, 103, 253, 1),
          ),
          GButton(
              iconColor: Colors.white,
              icon: Icons.shopping_basket_sharp,
              text: 'Shop',
              textColor: Color.fromRGBO(86, 103, 253, 1),
              iconActiveColor: Color.fromRGBO(86, 103, 253, 1)),
          GButton(
              iconColor: Colors.white,
              icon: Icons.shopping_basket_sharp,
              text: 'Quiz',
              textColor: Color.fromRGBO(86, 103, 253, 1),
              iconActiveColor: Color.fromRGBO(86, 103, 253, 1)),
        ],
        selectedIndex: selectedIndex,
        onTabChange: (index) {
          onTabChange(index);

          switch (index) {
            case 0:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
              break;
            case 1:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const ShopProd()),
              );
              break;
            case 2:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const GoogleFormQuiz()),
              );
              break;
            default:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
              break;
          }
        },
      ),
    );
  }
}
