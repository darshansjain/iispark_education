import 'package:flutter/material.dart';
import 'package:iispark_edu/screen/GetProd.dart';
import 'package:iispark_edu/screen/MyProfile.dart';

class ShopProd extends StatefulWidget {
  const ShopProd({super.key});

  @override
  State<ShopProd> createState() => _ShopProdState();
}

class _ShopProdState extends State<ShopProd> {
  String selectedGender = 'Boy';
  String selectedCategory = 'Smartwatch';
  double minCoins = 1200;
  double maxCoins = 21000;

  // Sample product data
  final List<Map<String, dynamic>> products = [
    {
      'name': 'Super NOVA',
      'category': 'Smartwatch',
      'price': 20330,
      'image': 'asset/pie.png'
    },
    {
      'name': 'Phoenix AMOLED',
      'category': 'Smartwatch',
      'price': 21330,
      'image': 'asset/pie.png'
    },
    {
      'name': 'ASTEROID',
      'category': 'Smartwatch',
      'price': 26330,
      'image': 'asset/pie.png'
    },
    {
      'name': 'Fire Pods Aura',
      'category': 'EarPods',
      'price': 12300,
      'image': 'asset/pie.png'
    },
    {
      'name': 'Fire Pods Ninja',
      'category': 'EarPods',
      'price': 12300,
      'image': 'asset/pie.png'
    },
    {
      'name': 'Lycan GamePods',
      'category': 'EarPods',
      'price': 12300,
      'image': 'asset/pie.png'
    },
  ];

  // Filter the products based on the selected filters
  List<Map<String, dynamic>> get filteredProducts {
    return products.where((product) {
      return product['category'] == selectedCategory &&
          product['price'] >= minCoins &&
          product['price'] <= maxCoins;
    }).toList();
  }

  // Open the filter dialog
  void openFilterDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return FilterDialog(
          selectedGender: selectedGender,
          selectedCategory: selectedCategory,
          minCoins: minCoins,
          maxCoins: maxCoins,
          onApply: (String gender, String category, double min, double max) {
            setState(() {
              selectedGender = gender;
              selectedCategory = category;
              minCoins = min;
              maxCoins = max;
            });
            Navigator.of(context).pop();
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                                backgroundImage: AssetImage("asset/pie.png"),
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
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search Product',
                      suffixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 310),
                  child: TextButton(
                    onPressed: openFilterDialog,
                    child: Container(
                      child: const Row(
                        children: [
                          Text(
                            "Filter",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Colors.black),
                          ),
                          Icon(
                            Icons.filter_list,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.all(8.0),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
                  ),
                  itemCount: filteredProducts.length,
                  itemBuilder: (context, index) {
                    final product = filteredProducts[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => GetProd(product: product),
                          ),
                        );
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: Image.asset(
                                product['image'],
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    product['name'],
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    '${product['price']} coins',
                                    style:
                                        const TextStyle(color: Colors.orange),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AppBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 50);
    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstEndPoint = Offset(size.width / 2, size.height - 30);
    var secondControlPoint = Offset(size.width * 3 / 4, size.height - 60);
    var secondEndPoint = Offset(size.width, size.height - 10);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height - 10);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class FilterDialog extends StatefulWidget {
  final String selectedGender;
  final String selectedCategory;
  final double minCoins;
  final double maxCoins;
  final Function(String, String, double, double) onApply;

  const FilterDialog({
    super.key,
    required this.selectedGender,
    required this.selectedCategory,
    required this.minCoins,
    required this.maxCoins,
    required this.onApply,
  });

  @override
  _FilterDialogState createState() => _FilterDialogState();
}

class _FilterDialogState extends State<FilterDialog> {
  late String _selectedGender;
  late String _selectedCategory;
  late double _minCoins;
  late double _maxCoins;

  final List<String> categories = ['Books', 'Smartwatch', 'EarPods', 'Gadgets'];

  @override
  void initState() {
    super.initState();
    _selectedGender = widget.selectedGender;
    _selectedCategory = widget.selectedCategory;
    _minCoins = widget.minCoins;
    _maxCoins = widget.maxCoins;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Filter'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              const Text('Gender:'),
              const SizedBox(width: 20),
              DropdownButton<String>(
                value: _selectedGender,
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedGender = newValue!;
                  });
                },
                items: <String>['Boy', 'Girl']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ],
          ),
          Row(
            children: [
              const Text('Category:'),
              const SizedBox(width: 20),
              DropdownButton<String>(
                value: _selectedCategory,
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedCategory = newValue!;
                  });
                },
                items: categories.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ],
          ),
          Row(
            children: [
              const Text('Coins:'),
              RangeSlider(
                values: RangeValues(_minCoins, _maxCoins),
                min: 1000,
                max: 30000,
                divisions: 100,
                labels: RangeLabels(_minCoins.toString(), _maxCoins.toString()),
                onChanged: (RangeValues values) {
                  setState(() {
                    _minCoins = values.start;
                    _maxCoins = values.end;
                  });
                },
              ),
            ],
          ),
        ],
      ),
      actions: [
        Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromRGBO(
                  86, 103, 253, 1), // Set the background color to blue
            ),
            onPressed: () {
              widget.onApply(
                  _selectedGender, _selectedCategory, _minCoins, _maxCoins);
            },
            child: const Text(
              'Apply',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}
