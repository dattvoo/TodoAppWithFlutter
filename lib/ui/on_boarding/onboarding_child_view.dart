import 'package:flutter/material.dart';

class OnboardingChildView extends StatelessWidget {
  const OnboardingChildView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: SafeArea(
        child: Column(
          children: [
            _buildSkipButton(),
            _buildOnboardingImage(),
            _buildOnboardingPageControl(),
            _buildOnboardingTitleAndContent(),
            _buildOnboardingNextAndPrevButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildSkipButton() {
    return Container(
      child: TextButton(
        onPressed: () => {},
        child: Text(
          'SKIP',
          style: TextStyle(color: Colors.white.withOpacity(0.44)),
        ),
      ),
    );
  }

  Widget _buildOnboardingImage() {
    return Container();
  }

  Widget _buildOnboardingPageControl() {
    return Container();
  }

  Widget _buildOnboardingTitleAndContent() {
    return Container();
  }

  Widget _buildOnboardingNextAndPrevButton() {
    return Container();
  }
}
