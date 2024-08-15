import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:iispark_edu/widgets/bottom_navbar.dart';

class GoogleFormQuiz extends StatefulWidget {
  const GoogleFormQuiz({super.key});

  @override
  State<GoogleFormQuiz> createState() => _GoogleFormQuizState();
}

class _GoogleFormQuizState extends State<GoogleFormQuiz> {
  int _selectedIndex = 2;

  void _onTabChange(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // Handle navigation based on the index here if needed
  }

  InAppWebViewController? controller;
  String url =
      "https://docs.google.com/forms/d/e/1FAIpQLSd_B7R26ctNO7eszChAdbAceHvsdYBddA0ifWrVRqJTuCJS0g/viewform"; // Replace with your Google Form URL
  double progress = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: progress < 1.0
                  ? LinearProgressIndicator(value: progress)
                  : Container(),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent),
                ),
                child: InAppWebView(
                  initialUrlRequest: URLRequest(
                    url: WebUri(url),
                  ),
                  onLoadStart: (controller, url) {
                    setState(() {
                      this.controller = controller;
                      this.url = url.toString();
                    });
                  },
                  onLoadStop: (controller, url) {
                    setState(() {
                      this.progress = 1.0;
                    });
                  },
                  onProgressChanged: (controller, progress) {
                    setState(() {
                      this.progress = progress / 100;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: CustomBottomNavBar(
        selectedIndex: _selectedIndex,
        onTabChange: _onTabChange,
      ),
    );
  }
}
