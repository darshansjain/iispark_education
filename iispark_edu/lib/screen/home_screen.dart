import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:iispark_edu/screen/MyProfile.dart';
import 'package:iispark_edu/screen/ShopProd.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  const CustomAppBar({super.key})
      : preferredSize = const Size.fromHeight(150.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      elevation: 0,
      flexibleSpace: Container(
        height: 150,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(86, 103, 253, 1),
        ),
        child: const Padding(
          padding: EdgeInsets.only(top: 20.0, left: 16.0, right: 16.0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(
                    'https://s3-alpha-sig.figma.com/img/67e4/eaf1/5b43c1f28163e5266ab0bbbc00c51b48?Expires=1719187200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=g0cjVhE4m2xK6hZ~TYmLKa8Nhtn3f5PUW99APBCRe7aMmfQIMlG7z11sJb2hyOzzN5bpmW42qIqsDG-bq6vEUBauKV5nWXZex-Sr0~Dw8~Bcbfai5h4uC7wEcKnL~~Hq1iNPBGQxvT2Cln~XOm4iqI4QwvMS2PDJ8ZqgAdtdRgzcNEBpoCu7SfWyRocBG4iKZTk8l4si6sFmPHZ10QflzhqozdlghvTSOtZ-4JhGclh3uejP6AcaYXAKn25lAmRpcEeuwZpOOPDZjyPGBEXc4B6~ffyPKPIMawFNYlR-IaAaUDag7R2QRlhXuJoy6p5W6gvNNsoz5fgD~-PHOtGdbA__'), // Replace with your profile image
              ),
              SizedBox(width: 10),
              Text(
                'Hi! Prudhvi',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Text(
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

class HorizontalListWheelScrollView extends StatelessWidget {
  const HorizontalListWheelScrollView({super.key});

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
          childDelegate: ListWheelChildBuilderDelegate(
            childCount: 20,
            builder: (context, index) {
              return RotatedBox(
                quarterTurns: 1,
                child: Container(
                  height: 50,
                  width: 50,
                  margin: const EdgeInsets.symmetric(vertical: 7),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(86, 103, 253, 1),
                  ),
                  child:
                      Stack(alignment: AlignmentDirectional.center, children: [
                    Image.asset("asset/levelPlanet.png"),
                    Text(
                      "$index",
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ]),
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
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
    return Scaffold(
      // appBar: const CustomAppBar(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 190.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  ClipPath(
                    clipper: AppBarClipper(),
                    child: Container(
                      height: double.infinity,
                      color: const Color.fromRGBO(86, 103, 253, 1),
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 16,
                    right: 16,
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
                          child: const Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://s3-alpha-sig.figma.com/img/67e4/eaf1/5b43c1f28163e5266ab0bbbc00c51b48?Expires=1719187200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=g0cjVhE4m2xK6hZ~TYmLKa8Nhtn3f5PUW99APBCRe7aMmfQIMlG7z11sJb2hyOzzN5bpmW42qIqsDG-bq6vEUBauKV5nWXZex-Sr0~Dw8~Bcbfai5h4uC7wEcKnL~~Hq1iNPBGQxvT2Cln~XOm4iqI4QwvMS2PDJ8ZqgAdtdRgzcNEBpoCu7SfWyRocBG4iKZTk8l4si6sFmPHZ10QflzhqozdlghvTSOtZ-4JhGclh3uejP6AcaYXAKn25lAmRpcEeuwZpOOPDZjyPGBEXc4B6~ffyPKPIMawFNYlR-IaAaUDag7R2QRlhXuJoy6p5W6gvNNsoz5fgD~-PHOtGdbA__'),
                                radius: 30,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Hi! Darshan',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 5),
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Row(
                            children: [
                              Icon(Icons.monetization_on, color: Colors.white),
                              SizedBox(width: 5),
                              Text('330',
                                  style: TextStyle(color: Colors.white)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Stack(
              children: [
                // Background Image
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://s3-alpha-sig.figma.com/img/1731/9f03/46e7e38d5c77d9e24edbf26469e50533?Expires=1721001600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=KBXHz-gt65IVycyyF6S~TlGYm2rzgpeopvNsgWCiyc6y-~6Ve19xy~kOqRQxH5L3tHZ4Y2v1UL~fJ1ZegdWBjvmU0Y0r94KQnWhb9Ltd5YksU4I7tmE8xYe~WAKf2hh8Cno1~~KEimIX615r5ROatx7Ri3dtYHI~UwiIWchAHWMzpugSJ2kx0iyt~wRw6aAwoygQHbzSe719QMlr9xpG-Lv6~eBhXdJeeomW~lV-0zL72~NmjjyfMwG0SgkUD1T3Btt7GXA9kWgnsob7T0xLSW74RfOc-h~Vfx3sWIBBfuHamSZMT2SUy-aS~-l-VTLpBgznrzjbxerWX~lyuML8Yg__'), // Make sure to add the correct background image path
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Image.network(
                      'https://s3-alpha-sig.figma.com/img/1731/9f03/46e7e38d5c77d9e24edbf26469e50533?Expires=1721001600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=KBXHz-gt65IVycyyF6S~TlGYm2rzgpeopvNsgWCiyc6y-~6Ve19xy~kOqRQxH5L3tHZ4Y2v1UL~fJ1ZegdWBjvmU0Y0r94KQnWhb9Ltd5YksU4I7tmE8xYe~WAKf2hh8Cno1~~KEimIX615r5ROatx7Ri3dtYHI~UwiIWchAHWMzpugSJ2kx0iyt~wRw6aAwoygQHbzSe719QMlr9xpG-Lv6~eBhXdJeeomW~lV-0zL72~NmjjyfMwG0SgkUD1T3Btt7GXA9kWgnsob7T0xLSW74RfOc-h~Vfx3sWIBBfuHamSZMT2SUy-aS~-l-VTLpBgznrzjbxerWX~lyuML8Yg__'), // Make sure to add the correct background image path
                ),
                const Center(
                  child: HorizontalListWheelScrollView(),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        //width: 300, // MediaQuery.of(context).size.width * 0.65,
        margin: EdgeInsets.only(bottom: 15, left: 100, right: 100),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(45),
            color: Color.fromARGB(255, 121, 126, 131)),
        child: GNav(
            rippleColor: Colors.grey[300]!,
            hoverColor: Colors.grey[100]!,
            gap: 8,
            activeColor: Colors.black,
            iconSize: 24,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            duration: Duration(milliseconds: 400),
            tabBackgroundColor: Colors.grey[100]!,
            color: Colors.black,
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.shopping_basket_sharp,
                text: 'Shop',
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ShopProd()));
                },
              ),
              // GButton(
              //   //onPressed: ,
              //   icon: Icons.search,
              //   text: 'Search',
              // ),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            }),
      ),
    );
  }
}
