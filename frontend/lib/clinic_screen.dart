import 'package:flutter/material.dart';

class ClinicScreen extends StatelessWidget {
  // 1. Define the callback function
  final Function(int)? onBackToHome;

  // 2. Add it to the constructor
  const ClinicScreen({super.key, this.onBackToHome});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Clinic Info", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        // 3. Set the arrow to trigger the callback to go Home
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF06B6D4)),
          onPressed: () {
            if (onBackToHome != null) {
              onBackToHome!(0); // Switch to Home tab (index 0)
            }
          },
        ),
      ),
      body: const Center(child: Text("Clinic details go here")),
    );
  }
}