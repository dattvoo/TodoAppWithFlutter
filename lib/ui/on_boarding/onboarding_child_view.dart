import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:super_todo_app/utils/enum/onboarding_page_position.dart';

class OnboardingChildView extends StatelessWidget {
  final OnboardingPagePosotion onboardingPagePosotion;
  final VoidCallback onPressNext;
  final VoidCallback onPressBack;
  final VoidCallback onPressSkip;
  const OnboardingChildView(
      {super.key,
      required this.onboardingPagePosotion,
      required this.onPressNext,
      required this.onPressBack,
      required this.onPressSkip});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildSkipButton(),
              _buildOnboardingImage(),
              _buildOnboardingPageControl(),
              _buildOnboardingTitleAndContent(),
              _buildOnboardingNextAndPrevButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSkipButton() {
    return Container(
      margin: const EdgeInsets.only(top: 14),
      alignment: AlignmentDirectional.centerStart,
      child: TextButton(
        onPressed: () => {
          onPressSkip!(),
        },
        child: Text(
          'SKIP',
          style: TextStyle(color: Colors.white.withOpacity(0.44)),
        ),
      ),
    );
  }

  Widget _buildOnboardingImage() {
    return Image.asset(
      onboardingPagePosotion.onboardingPageImage(),
      height: 296,
      width: 270,
      fit: BoxFit.contain,
    );
  }

  Widget _buildOnboardingPageControl() {
    return Container(
      margin: const EdgeInsets.only(top: 42),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 26,
            height: 4,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(56),
                color: onboardingPagePosotion == OnboardingPagePosotion.page1
                    ? Colors.white.withOpacity(0.7)
                    : Colors.white),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            width: 26,
            height: 4,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(56),
                color: onboardingPagePosotion == OnboardingPagePosotion.page2
                    ? Colors.white.withOpacity(0.7)
                    : Colors.white),
          ),
          Container(
            width: 26,
            height: 4,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(56),
                color: onboardingPagePosotion == OnboardingPagePosotion.page3
                    ? Colors.white.withOpacity(0.7)
                    : Colors.white),
          )
        ],
      ),
    );
  }

  Widget _buildOnboardingTitleAndContent() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 38, vertical: 50),
      child: Column(
        children: [
          Text(
            onboardingPagePosotion.onboardingPageTitle(),
            style: TextStyle(
              color: Colors.white.withOpacity(0.87),
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 42,
          ),
          Text(
            onboardingPagePosotion.onboardingPageContent(),
            style:
                TextStyle(color: Colors.white.withOpacity(0.87), fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildOnboardingNextAndPrevButton() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24)
          .copyWith(top: 50, bottom: 24),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              onPressBack();
            },
            child: Text(
              'BACK',
              style: TextStyle(
                  color: Colors.white.withOpacity(0.44), fontSize: 16),
            ),
          ),
          const Spacer(),
          Container(
            constraints: const BoxConstraints(
              minWidth: 90,
              minHeight: 50,
            ), // Set your desired height
            child: ElevatedButton(
              onPressed: () {
                onPressNext.call();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF8875FF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              child: Text(
                onboardingPagePosotion == OnboardingPagePosotion.page3
                    ? "Get Started"
                    : "Next",
                style: const TextStyle(
                  color: Colors.white,
                  fontFamily: "Lato",
                  fontSize: 16,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
