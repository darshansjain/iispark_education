import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PassUpRes extends StatefulWidget {
  const PassUpRes({super.key});

  @override
  State<PassUpRes> createState() => _PassUpResState();
}

class _PassUpResState extends State<PassUpRes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Password",
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(55),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(" Current Password Id"),
                const SizedBox(
                  height: 5,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    suffix: const Icon(Icons.remove_red_eye),
                    labelText: 'Current Password Id',
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
                const Text(" New Password Id"),
                const SizedBox(
                  height: 5,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    suffix: const Icon(Icons.remove_red_eye),
                    labelText: 'New Password Id',
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
                  '*otp will send to your new email address for confirmation we will send a 6 digit code to your eamil id.',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                const SizedBox(
                  height: 50,
                ),
                Center(
                  child: SizedBox(
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
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      const Text("Forget Password ?"),
                      const SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const Text(
                          "RESET PASSWORD",
                          style: TextStyle(color: Colors.blue),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
