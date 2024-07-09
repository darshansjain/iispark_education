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
            "https://s3-alpha-sig.figma.com/img/ca20/2dd5/b3b613baee71cc1d56f8c2bef0bf3583?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=BsZWuabJsJ7heIyNkl0kRCpbmL9Y1VtO3s5ZGCysjUtOmTZNieGIG0gxW7pwIpKpbIOValZnLeRxzSCJi0Hs7jPdjd1doVaYRJ3shz~l8dIUwV5vqUVlfDmCXzqdG0cpRORlvrh4hRLJtkPKdeQl21J6Zm0bbfVb6yDuw-ZO6JCq8lJgdrkcFZSMAjX~IDo1HDT9m7t~as1GhwcIbwT0Z0bFbyDwHrLL8AhXxZuxvfjDqBPX8qvbBrpGiKhBKjQ7T3kjCWZftNfK7CipPNnLLvV~g674QnjgIBOoHHVcOTKHbbO81A6Cvw~HeKyJmMoBqHxEV~AhJsVTAbS4WkA7uA__",
        isUnlocked: true),
    Level(
        levelNo: 2,
        levelImg:
            "https://s3-alpha-sig.figma.com/img/8122/d1d2/cdf5f15b73127d3f2b01dabac5d32bfd?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=PzlOrxJIlxnZnEYfsaJs8NxDoLis8O4gL~9xDEn34knwCgsuHF4GW-9NppVh8aNRPxHKNkAo6qKjw8FpkLsdiqH25D7~08w28mHLjVlpy-~efBGRUnkhNWAmDZ3TnbhGLA-a9gjrhVkA8iLQNZQ3y-Af50PLU6aXlGrnE0RXmhnWI510lg96q9MNJzKTO2OoTtfvwtCB8IY~3OHY1uPv00tsznU4gxPb24ZgCt3Xb1F1K-y0j3AqJw4wW17Mn56ZC17WfOSHQu78Kj3BEGGxUFJn62qDf9q-3w5W4wEQQ6mX02MzFtuK-WYg5fARvq8GYsVppLacRMtAt46ZZVs-fw__"),
    Level(
        levelNo: 3,
        levelImg:
            "https://s3-alpha-sig.figma.com/img/3bc9/ce4a/d1b5e0755a2a7d4ac51fcc15d2468839?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=C9rU81LwFZh0aJTDzB7AzS8FM3Q1CAuvRodgRlCjcSLSx2LNZSo1eNSP3i-AYEdcXQgYCWPgJUNtCp6O5-ivnscr9bsKZRsV1zDxXUfmutQXJDkdyQzbm3~7qfWt3UB8ddFZbv5M130s6pTM7cMFv5XODz7m8ts5kdPCW32xRRb6JjbD7AhKVAGF07AO86eU7O8W5egwLdzRpkNjaPBTrA1KB6p--IYtOzmHuJK~nx3LHMBjmAhhWpRIYXBdDYHqIItsgl3LbpFkwlYJKbu4lMdbDycXSGuTVJ6rR2ac36dU8v1ENYgNmyWYiH9TqWrtuK8Hngfps4VeCl960qdmJw__"),
    Level(
        levelNo: 4,
        levelImg:
            "https://s3-alpha-sig.figma.com/img/b71b/4bbb/6d44f4448fc02976d93b4c145e9e7edc?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=lPMFRJEE2--ifD6ZqtpKAXUNfhBf5SUFpz~NBqWXBQ2nwbDT~l4SuGUGy~xI8yijLM~eIsmuF0uDiJdkugPHEVkBH1Iv05xFDo4vc1kbwpFOaH4JY-pXlNz~NI7ygXJfx0Gbqsjjb7O3pSIKPDxmlm-TGT8AhxOR2sV7~-H2hy2MmzYBRKstGj8or3KznRWsowFF0wA5OFxbzNAHdPElszC7hhBjdzVthtCVQX7JVowpPM24Za1Geu0gbOJB~i2vEE-FtcPPDROnjoh02ab3vLIRugl3aAu5Nj5KOy0VK1QRYb7gK7AglrinMXt1Zbavi~egA8f5tg337YNjld0Oow__"),
    Level(
        levelNo: 5,
        levelImg:
            "https://s3-alpha-sig.figma.com/img/aa73/d354/4c7a30cda91a2c4773b440289e8941f2?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=mbsj4OhXdieEWFJnG6u9GHQvMdYEdDM~9Pr-ITUruEXifhwvFFZMDRBUCDpsuY4LbmYFrbrl9eSCe46P6U9v8SAjoFPM2XrDO9ax21o1vXqpf13CwCQPmQJ7G-cZxjOC6prUJMVjapYw94Dp3dME-T4ncIl35eVj6sVDvMvXeQ86JuoM8bdRJW7daeyKTdMi0bEYEKW7yB70AHkeMgaPRLM-14v1RzTcEXWhFOIxmwW2X1V8T4dOkX56TL~T71DcsUSFqwITeVJXY0aqgZNTHHztRPWcbDW6CjZfNiX52AjAckXTLei-lMEn3YRl-WtQWQ80K1Oat3NZgUsJeCjQJQ__"),
    Level(
        levelNo: 6,
        levelImg:
            "https://s3-alpha-sig.figma.com/img/3f99/9971/fce53eda52cd123640bb824910b1b548?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=hb10ZBvbZHJyNwj4BwJ2GcWkvcxO1TiaFDPrd3oZ~-qFnizG3htkCcMsZsX8Yix2bNNDrqaXz-C6kvEIr-HNvDgaUI-Pcs-k4KWxQ9YFZfC54GhSjiMHhjR6y4noYdUobDGio~x22qk5mrNOUVkV2MJyTKLXX8GcADBQ0fT~Qe7elEUF--O0Pc5EOn-sCOzoF7GOZYea7VAM1-MCLILlAcmkuLy8SMrhKD-O4JBvzJOZBmviJnJwJ6hFfcFz~QH5dNNmy1sdzF2id81wzVv51QhseA7WDWvaT~a5kPW0ea7ZM96n4J~kgEz83FHV53XmldUKhVxYC4-pcpOj263ARQ__")
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
                    'https://s3-alpha-sig.figma.com/img/1731/9f03/46e7e38d5c77d9e24edbf26469e50533?Expires=1721001600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=KBXHz-gt65IVycyyF6S~TlGYm2rzgpeopvNsgWCiyc6y-~6Ve19xy~kOqRQxH5L3tHZ4Y2v1UL~fJ1ZegdWBjvmU0Y0r94KQnWhb9Ltd5YksU4I7tmE8xYe~WAKf2hh8Cno1~~KEimIX615r5ROatx7Ri3dtYHI~UwiIWchAHWMzpugSJ2kx0iyt~wRw6aAwoygQHbzSe719QMlr9xpG-Lv6~eBhXdJeeomW~lV-0zL72~NmjjyfMwG0SgkUD1T3Btt7GXA9kWgnsob7T0xLSW74RfOc-h~Vfx3sWIBBfuHamSZMT2SUy-aS~-l-VTLpBgznrzjbxerWX~lyuML8Yg__'), // Make sure to add the correct background image path
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
