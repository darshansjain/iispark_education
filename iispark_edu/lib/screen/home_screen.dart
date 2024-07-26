import 'dart:async';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:iispark_edu/main.dart';
import 'package:iispark_edu/models/level_model.dart';
import 'package:iispark_edu/presentation/iphone_14_15_pro_max_1_screen/level.dart';
import 'package:iispark_edu/screen/MyProfile.dart';
import 'package:iispark_edu/screen/ShopProd.dart';
import 'package:iispark_edu/widgets/bottom_navbar.dart';
import 'package:provider/provider.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  const CustomAppBar({super.key})
      : preferredSize = const Size.fromHeight(130.0);

  @override
  State<CustomAppBar> createState() => CustomAppBarState();
}

class CustomAppBarState extends State<CustomAppBar> {
  String? firstName;

  @override
  void initState() {
    super.initState();
    firstName;
    // Fetch user's first name when the widget initializes
    fetchFirstName();
  }

  Future<void> fetchFirstName() async {
    final userId = Provider.of<UserProvider>(context).userId;

    print('User ID: $userId');
    // Reference to your Firebase database
    DatabaseReference userRef =
        FirebaseDatabase.instance.reference().child('users').child(userId!);

    // Get a single snapshot of the user data
    final snapshot = await userRef.get();
    if (snapshot.exists) {
      // Extract first name from snapshot
      Map<String, dynamic> userData = snapshot.value as Map<String, dynamic>;
      setState(() {
        firstName = userData['first_name'];
        print(firstName); // Replace 'first_name' with the actual key
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      elevation: 0,
      flexibleSpace: Container(
        height: 130,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(86, 103, 253, 1),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 16.0, right: 16.0),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyProfile(),
                    ),
                  );
                },
                child: Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://s3-alpha-sig.figma.com/img/67e4/eaf1/5b43c1f28163e5266ab0bbbc00c51b48?Expires=1721001600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=pVfZxW2E1DqW-KX45UBAjLw3IGyZKOUWDKc1Ab-wzc15yEuzAkj5w4k5wIYkJfBp6PZQpE7v3KiC6R8R8uIt4KEZ9QQuuqQMJsO73G358bEJmoVk8Zmk~yYxVsZz4STcGpRx9s5ot1hnHP1CRAaQzFD~SM5zD0vYxeJzP0Fxz6-S~NgAoSkOWMVs5Rd5Zasi3DOOwlgvq1EKMvxKzx4Idamj7ycj0YGoOsL6rjZbzMZ~VEtZcRSNJ3SG~5mTI4d5poI2oMAS91ShHD0NW2iWoXbPR5K-M6JH4Pw2DI7EjbZlwATw2u8X0HoSj22YZnDfhWCEDHo9i9rtKTWUwHffFA__"),
                      radius: 30,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      (firstName != null) ? 'Hi! $firstName' : 'Hi! Buddy',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              const Text(
                '330',
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HorizontalListWheelScrollView extends StatefulWidget {
  const HorizontalListWheelScrollView({super.key});

  @override
  State<HorizontalListWheelScrollView> createState() =>
      _HorizontalListWheelScrollViewState();
}

class _HorizontalListWheelScrollViewState
    extends State<HorizontalListWheelScrollView> {
  List<Level> level = [
    Level(
        levelNo: 1,
        levelImg:
            "https://s3-alpha-sig.figma.com/img/ca20/2dd5/b3b613baee71cc1d56f8c2bef0bf3583?Expires=1722816000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=W2ETUUQ~4d2kgXa5FoHBXWcLfojg9oh0ovrj297YDiTqXfcrPApN6bXW-NIhQCncCOAstmMILm~QvtoRP1s-ImUNY3482~L-rfNVRJe5hey1PGzPbBSXSPyTm2xu2plrqBg1qHPZ-nxxm0r6RiFj4MPJD~-LWF4aUPX8cmKv0EgPH8knHH~2AGyJ4rmEJPnB3OR8PPFIea2nhWKco1gW6K1SajYTkNiF74AYdTlFZImyj2q6z7kCEB06S6UPjsg45dk2FUpVyOOyqfRTO-cBHrmGcDEU48le7tGQVokXOW6V5QMHFqzvsCni-KCsCXrvYpnv4fDu-o77Yswgl~b~0w__",
        isUnlocked: true),
    Level(
        levelNo: 2,
        levelImg:
            "https://s3-alpha-sig.figma.com/img/8122/d1d2/cdf5f15b73127d3f2b01dabac5d32bfd?Expires=1722816000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=RNvLdNl8smZ3MpQ-XATVRLDnKJlPHJ0ZjvfaoLCtSQ1cRAmGA08e~urgKqWBUnTn~9KHGEqYaspGF2jrYu6H-SBLm-IpSS4e9vD5C6jAbBnSN6S-lNn4nvk-COlMsnGazwMEut~thaiUpIl3vQDRfyBj8rxFQaJZWYhgUKt8ob3NP-rzU8yvJMfM21U2D9vHqN6TOuCSWjNsGkR6pgpkqEu-HjUcfFXXmVjOxtw8S3mMtlrLg-DNB3YLTiJAii7Prt8Cc52cR6ltspTkt9Qv2vdbuO7fitvFG5idY8PWtraisWmMBXMQEUcG~eglGAnvI2rfgoIeAmUfBD7r2pmKuA__"),
    Level(
        levelNo: 3,
        levelImg:
            "https://s3-alpha-sig.figma.com/img/b71b/4bbb/6d44f4448fc02976d93b4c145e9e7edc?Expires=1722816000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=pE656VRf8s-dcFcrS2e~Y8K4NMFXv-xo~Q5Wzcr-D0iv6JSC9yi4O9AL0JFLdRhwleJ~PNu1lAcH2CSRb3Y~RmA39YKAqzG8THEaSle7kNUCVS9jBVa4EGAmjr4BNs8cD4gxYu2TkFgwnMRLzNhMmO~NRaxdXhAIkVt3ucwuud1A4QjYP-UjXiJ8L9qVMdMcY2LR9kvvRGhw2SD1G~rmQmFpzDsaSmVk00uZjtyUde8WtHIK5UguY5TLpVjGDwzxwg1KL3eosYR3oiu40xDg7ePCI7~2OKdQTfTHVxVaHFF62vDVL~ECve7SBbX7Ur~eqqrQIusJl-usJhcjIktVRw__"),
    Level(
        levelNo: 4,
        levelImg:
            "https://s3-alpha-sig.figma.com/img/3bc9/ce4a/d1b5e0755a2a7d4ac51fcc15d2468839?Expires=1722816000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=epNKd9sNdwa2l-gw-OH1CW0YhLHSsX4b7zNd5mSEIOcxqjQZK3Tx2Po51skTuy4ON4pldeWqQCwJQTy7HV672P3y~4CY1acoT5M1JKrh2Ty5tN9Y2Gdxyx9ZxY7THk9sxBFnobdpRl1ZNZkACaSqJJgYEO1mgTxR0g-IbX8Mh00g4V7dxUPOgXfsqXlHXfxXFYc3r6i~6DfRViG39cGabboCKZNJ~-Fo3mCj2jX--1ObVmHG5a9wF~Q1sWwCUfrXE0VCOsmKc9MZDgZjFV74yOwnffeW3PJM95sF0ByytwleU-gujy1shQlBdhDwklQJ3N2NjGa8rTSIoBlfg3eVdw__"),
    Level(
        levelNo: 5,
        levelImg:
            "https://s3-alpha-sig.figma.com/img/aa73/d354/4c7a30cda91a2c4773b440289e8941f2?Expires=1722816000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=gzofeeeLrO10GJo2ZAmm~6NOysd97lBjE0ijTyvj9dGYaOzhS~n46ymFDpzdEtOFncuRL9W-4s9DhLNaHxwXuJbDVnYeW5rwtZ8pW0ltF5YLWVF42OsVq2Kvw4jVfAPldIykO67dEUeVKBNaSVpjfIJApDH4c-~~xaoC130Go5bBKieU4ebTWrnPF4xqhu-9swc-FF4MQ9jgU6x3ToJUhPFJp7uCIQP4BhT0O8X1Dv9wLuFjkfO7UvVxobSAvFKdLDyTSbs3j8r4PlhErLqRtNasIWvZfKRI5W8jy44lYca4Y8IfMbhDQHCc3HEDf7CspCus6oU9ni5atW3vWKSJyg__"),
    Level(
        levelNo: 6,
        levelImg:
            "https://s3-alpha-sig.figma.com/img/3f99/9971/fce53eda52cd123640bb824910b1b548?Expires=1722816000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=hL6bJN6P1xP1PKZneotH5qi21lbjX5zuaXVOvq6sKTknIpnTRiH-kxFFFvlDlHyxCJaJNFVK9IT6Nzjuc-e68zh0HZfggII0v47Sg4jtaxuSXdz79Y1NebPjqDhCNWOnfSFHLCmIXUQWYaQXhpgsWBgUEtyVNQqY0MLdCdW59banV3qBjscoCW42lBJj0eB-wbU9U~hbj~5PfbAkG4tAq2eroPvNBDCG6LksAvUAIHmsQsHVrOYkXD6KY7SpCBDbRanfAT8cptm8MgTFpzzUGOs-JxzgTDane54X60d-m39vxuCVsBtFPb2niPmUlg1Ix6qS~HvwWz1KeeUi7W7ZNw__")
  ];

  int currentLevel = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("asset/mainPlanet.png"),
          fit: BoxFit.contain,
        ),
      ),
      child: RotatedBox(
        quarterTurns: 3,
        child: ListWheelScrollView.useDelegate(
          itemExtent: 100,
          perspective: 0.005,
          diameterRatio: 2.0,
          offAxisFraction: 0.009,
          physics: const FixedExtentScrollPhysics(),
          onSelectedItemChanged: (index) {
            setState(() {
              currentLevel = index;
            });
          },
          childDelegate: ListWheelChildBuilderDelegate(
            childCount: level.length,
            builder: (context, index) {
              return GestureDetector(
                onTap: () {
                  if (level[index].isUnlocked) {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Iphone1415ProMax1Screen()));
                    print('Selected Level ${level[index].levelNo}');
                  }
                },
                child: RotatedBox(
                  quarterTurns: 1,
                  child: Container(
                    height: 50,
                    width: 50,
                    margin: const EdgeInsets.symmetric(vertical: 7),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(86, 103, 253, 1),
                    ),
                    child: Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.network(level[index].levelImg)),
                          Text(
                            "${level[index].levelNo}",
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ]),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onTabChange(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // Handle navigation based on the index here if needed
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Stack(
        children: [
          // Background Image
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://s3-alpha-sig.figma.com/img/1731/9f03/46e7e38d5c77d9e24edbf26469e50533?Expires=1722816000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=S-8ivT5abqnGuXVMfogMp0~rcXgtVUqksnGulPYZQE0WZqAXwAxYxRh2Hx6T~vJJHVS1t-yuRSxyrQNysdH8rBHtjpKOaj3dZ1bcAV6C-K5pTegQAYX77Gs3aQhmLVi8hy-whTSjqYl8YOAeo1p4sCVinmUkBXy7A8CsjSiPjepSc6-Mpxn1dW85ufayWAb0GXz6IFMWvd5rafvFqnsQy-cpYWbyADK0jN9uBOHMOX4JqFOmu5SG7PgnhUlr9zBTOkP7rNLOurJag2bTFXR7UJNK~vhNv7m0G9RQ8zMZUD24ub06Olv7nsPX-idfsfKxMzgESiq7lxymFCDyXTv5vw__'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Center(
            child: HorizontalListWheelScrollView(),
          ),
        ],
      ),
      floatingActionButton: CustomBottomNavBar(
        selectedIndex: _selectedIndex,
        onTabChange: _onTabChange,
      ),
    );
  }
}
