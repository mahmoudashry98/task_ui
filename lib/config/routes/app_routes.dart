import 'package:task_ui/app/presentation/screens/onboarding.dart';
import 'package:task_ui/app/presentation/screens/start.dart';

class AppRouts {
  static const String initialRoute = '/';
  static const String onBoardingScreen = '/onboarding';
}

final routes = {
  AppRouts.initialRoute: (context) => const StartScreen(),
  AppRouts.onBoardingScreen: (context) => const OnBoardingScreen(),
};
