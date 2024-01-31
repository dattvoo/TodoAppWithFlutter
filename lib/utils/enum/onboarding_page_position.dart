enum OnboardingPagePosotion {
  page1,
  page2,
  page3,
}

extension OnboardingPagePosotionExtension on OnboardingPagePosotion {
  // Tra ve image cho 3 page
  String onboardingPageImage() {
    switch (this) {
      case OnboardingPagePosotion.page1:
        return 'assets/images/onboarding_1.png';
      case OnboardingPagePosotion.page2:
        return 'assets/images/onboarding_2.png';
      case OnboardingPagePosotion.page3:
        return 'assets/images/onboarding_3.png';
    }
  }

  String onboardingPageTitle() {
    switch (this) {
      case OnboardingPagePosotion.page1:
        return 'Manage your tasks';
      case OnboardingPagePosotion.page2:
        return 'Create daily routine';
      case OnboardingPagePosotion.page3:
        return 'Orgonaize your tasks';
    }
  }

  String onboardingPageContent() {
    switch (this) {
      case OnboardingPagePosotion.page1:
        return 'You can easily manage all of your daily tasks in DoMe for free';
      case OnboardingPagePosotion.page2:
        return 'In Uptodo  you can create your personalized routine to stay productive';
      case OnboardingPagePosotion.page3:
        return 'You can organize your daily tasks by adding your tasks into separate categories';
    }
  }
}
