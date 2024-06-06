import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentStep = 0;
  int _currentIndex = 0;
  final List<Step> _steps = [
    Step(
      title: Text('Step 1'),
      content: Text('This is the first step.'),
      isActive: true,
    ),
    Step(
      title: Text('Step 2'),
      content: Text('This is the second step.'),
      isActive: false,
    ),
    Step(
      title: Text('Step 3'),
      content: Text('This is the third step.'),
      isActive: false,
    ),
  ];

  void _onStepTapped(int step) {
    setState(() {
      _currentStep = step;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Stepper(
              steps: _steps,
              currentStep: _currentStep,
              onStepTapped: _onStepTapped,
              onStepContinue: () {
                setState(() {
                  if (_currentStep < _steps.length - 1) {
                    _currentStep++;
                  }
                });
              },
              onStepCancel: () {
                setState(() {
                  if (_currentStep > 0) {
                    _currentStep--;
                  }
                });
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'About',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
