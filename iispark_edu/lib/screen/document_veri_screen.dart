import 'dart:io';
import 'package:flutter/material.dart';
import 'package:iispark_edu/screen/home_screen.dart';
import 'package:image_picker/image_picker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_storage/firebase_storage.dart';

class DocumentVerificationPage extends StatefulWidget {
  const DocumentVerificationPage({super.key});

  @override
  _DocumentVerificationPageState createState() =>
      _DocumentVerificationPageState();
}

class _DocumentVerificationPageState extends State<DocumentVerificationPage> {
  final ImagePicker _picker = ImagePicker();
  File? _studentIdFront;
  File? _studentIdBack;
  File? _aadhaarFront;
  File? _aadhaarBack;

  Future<void> _pickImage(ImageSource source, String type) async {
    final pickedFile = await _picker.pickImage(source: source);
    if (pickedFile != null) {
      setState(() {
        if (type == 'studentFront') {
          _studentIdFront = File(pickedFile.path);
        } else if (type == 'studentBack') {
          _studentIdBack = File(pickedFile.path);
        } else if (type == 'aadhaarFront') {
          _aadhaarFront = File(pickedFile.path);
        } else if (type == 'aadhaarBack') {
          _aadhaarBack = File(pickedFile.path);
        }
      });
    }
  }

  Future<void> _uploadFile(File file, String path) async {
    try {
      final storageReference = FirebaseStorage.instance
          .refFromURL('gs://iinspark-edu.appspot.com')
          .child(path);
      await storageReference.putFile(file);
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Upload successful: $path')));
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Upload failed: $e')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Documents Verification')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text('Upload your Student ID Card both sides'),
            Row(
              children: [
                _buildUploadButton('Front', 'studentFront'),
                _buildUploadButton('Back', 'studentBack'),
              ],
            ),
            const Text('Upload your Aadhaar Card both sides'),
            Row(
              children: [
                _buildUploadButton('Front', 'aadhaarFront'),
                _buildUploadButton('Back', 'aadhaarBack'),
              ],
            ),
            SizedBox(
              width: 260,
              child: ElevatedButton(
                onPressed: () async {
                  if (_studentIdFront != null) {
                    await _uploadFile(_studentIdFront!, 'studentId/front.jpg');
                  }
                  if (_studentIdBack != null) {
                    await _uploadFile(_studentIdBack!, 'studentId/back.jpg');
                  }
                  if (_aadhaarFront != null) {
                    await _uploadFile(_aadhaarFront!, 'aadhaar/front.jpg');
                  }
                  if (_aadhaarBack != null) {
                    await _uploadFile(_aadhaarBack!, 'aadhaar/back.jpg');
                  }

                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(86, 103, 253, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                ),
                child: Text(
                  'Next',
                  style: GoogleFonts.exo(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUploadButton(String label, String type) {
    return Expanded(
      child: GestureDetector(
        onTap: () => _pickImage(ImageSource.gallery, type),
        child: Container(
          margin: const EdgeInsets.all(8.0),
          height: 150,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Center(
            child: Text(label),
          ),
        ),
      ),
    );
  }
}
