import 'package:flutter/material.dart';
import 'package:super_todo_app/ui/on_boarding/onboarding_child_view.dart';
import 'package:super_todo_app/ui/start_screen/start_screen_view.dart';
import 'package:super_todo_app/utils/enum/onboarding_page_position.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      controller: _pageController,
      children: [
        // Truyen vao cac Widget con ma muon pageView hien thi
        OnboardingChildView(
          onboardingPagePosotion: OnboardingPagePosotion.page1,
          onPressNext: () {
            _pageController.jumpToPage(1);
          },
          onPressBack: () {},
          onPressSkip: () {
            _pageController.jumpToPage(2);
          },
        ),
        OnboardingChildView(
          onboardingPagePosotion: OnboardingPagePosotion.page2,
          onPressNext: () {
            _pageController.jumpToPage(2);
          },
          onPressBack: () {
            _pageController.jumpToPage(0);
          },
          onPressSkip: () {
            _pageController.jumpToPage(2);
          },
        ),
        OnboardingChildView(
          onboardingPagePosotion: OnboardingPagePosotion.page3,
          onPressNext: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const StartScreen()));
          },
          onPressBack: () {
            _pageController.jumpToPage(1);
          },
          onPressSkip: () {},
        ),
      ],
    ));
  }
}
