class AppStrings {
  // page routing
  static const String noRouteFound = 'No Route Found';

  // onboarding
  static const String onBoardingTitle1 = 'Your Dream Job Is Waiting For You';
  static const String onBoardingTitle2 = 'Discover Amazing Jobs For You!';
  static const String onBoardingTitle3 = 'Make Your Dream career With Job';
  static const String onBoardingSubTitle1 =
      'Discover millions of jobs and get in touch with hiring managers';
  static const String onBoardingSubTitle2 =
      'Create your profile with us and be visible to the top recruiters of the world!';
  static const String onBoardingSubTitle3 =
      'We help you to find your dream job according to your skillet,location & preference to build your career.';
  static const String skip = 'Skip';

  // Validation Reg Expr
  static final RegExp emailValidatorRegExp = RegExp(r"^[a-zA-Z0-9]+\.[a-zA-Z]");
  static final RegExp emailRegExp =
      RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  static final RegExp nameRegExp =
      RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$");
  static final RegExp phoneRegExp = RegExp(r"^\+?0[0-9]{10}$");
  static final RegExp passwordRegExp = RegExp(
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\><*~]).{8,}/pre>');
}
