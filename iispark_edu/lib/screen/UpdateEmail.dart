import 'package:flutter/material.dart';

class UpdateEmail extends StatefulWidget {
  const UpdateEmail({super.key});

  @override
  State<UpdateEmail> createState() => _UpdateEmailState();
}

class _UpdateEmailState extends State<UpdateEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Email Update",
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(55),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(" Current Email Id"),
                const SizedBox(
                  height: 5,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Current Email Id',
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(" New Email Id"),
                const SizedBox(
                  height: 5,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'New Email Id',
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  '*otp will send to your new email address for confirmation we will send a 6 digit code to your amil id.',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                const SizedBox(
                  height: 50,
                ),
                Center(
                  child: Container(
                    width: 300,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle button press
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor:
                            Colors.blue, // Set the text color to white
                        //minimumSize:Size(300, 50), // Set the minimum size of the button
                      ),
                      child: const Text("SEND OTP"),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
