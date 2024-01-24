import 'package:flutter/material.dart';
import 'package:super_todo_app/ui/on_boarding/onboarding_child_view.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      children: [
        OnboardingChildView(),
        Container(
          color: Colors.blue,
        ),
        Container(
          color: Colors.black,
        ),
      ],
    ));
  }
}
