import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Container(
          margin: const EdgeInsets.symmetric(horizontal: 18),
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            _buildHeaderContentAndTitle(),
            _buildActionButton(),
          ],
        ),
      )),
    );
  }

  Widget _buildHeaderContentAndTitle() {
    return Expanded(
      flex: 2,
      child: Column(
        children: [
          const Text(
            'Welcome to UpTodo',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 28,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'Please login to your account or create new account to continue',
              style: TextStyle(color: Colors.white.withOpacity(0.87)),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton() {
    return Expanded(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              width: double.infinity, // Set the desired width
              height: 50.0, // Set the desired height
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF8875FF),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4))),
                child: const Text(
                  'LOGIN',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Lato",
                      fontSize: 16,
                      letterSpacing: 1.5),
                ),
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            SizedBox(
              width: double.infinity, // Set the desired width
              height: 50.0, // Set the desired height
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF121212),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                      side: const BorderSide(color: Color(0xFF8875FF)),
                    )),
                child: const Text(
                  'CREATE ACCOUNT',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Lato",
                      fontSize: 16,
                      letterSpacing: 1.5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
