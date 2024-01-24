import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF121212), body: _buildBodyPage());
  }

  Widget _buildBodyPage() {
    return SafeArea(
        child: Container(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [_buildSplashIcon(), _buildContentBody()],
        ),
      ),
    ));
  }

  Widget _buildSplashIcon() {
    return Image.asset(
      'assets/images/splash_icon.png',
      width: 95,
      height: 80,
      fit: BoxFit.cover,
    );
  }

  Widget _buildContentBody() {
    return Container(
        margin: const EdgeInsets.only(top: 20),
        child: const Text(
          'Splash Screen',
          style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: "Lato"),
        ));
  }
}
