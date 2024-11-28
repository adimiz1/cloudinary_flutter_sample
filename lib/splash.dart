import 'dart:async';
import 'package:cloudinary_flutter_sample/colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Simulate some initialization or delay (e.g., 3 seconds)
    Timer(Duration(seconds: 3), () {
      // Navigate to the main screen
      Navigator.pushReplacementNamed(context, '/main');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cloudinaryBlue, // Customize your background color
      body: Center(
        child: Image.asset(
          'assets/logo.png', // Your splash screen logo (ensure it's in your assets folder)
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}
