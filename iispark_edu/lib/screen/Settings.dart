import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Settings",
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Version'),
            subtitle: Text('0.0.01'),
          ),
          Divider(),
          ListTile(
            title: Text('Terms of Service'),
            onTap: () {
              // Navigate to Terms of Service page
            },
          ),
          Divider(),
          ListTile(
            title: Text('Privacy Policy'),
            onTap: () {
              // Navigate to Privacy Policy page
            },
          ),
          Divider(),
          ListTile(
            title: Text('Legal Notices'),
            onTap: () {
              // Navigate to Legal Notices page
            },
          ),
        ],
      ),
      //const Padding(
      //   padding: EdgeInsets.all(25.0),
      //   child: Column(
      //     children: [
      //       Text("Version"),
      //       SizedBox(
      //         height: 10,
      //       ),
      //       Text("      Term of Service"),
      //       SizedBox(
      //         height: 10,
      //       ),
      //       Text("Privacy Policy"),
      //       SizedBox(
      //         height: 10,
      //       ),
      //       Text("Legal Notice"),
      //     ],
      //   ),
      // ),
    );
  }
}
