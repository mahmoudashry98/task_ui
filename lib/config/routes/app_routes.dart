import '../../presentation/screens/chat_bot.dart';
import '../../presentation/screens/home.dart';
import '../../presentation/screens/onboarding.dart';
import '../../presentation/screens/login.dart';

class AppRouts {
  static const String initialRoute = '/';
  static const String onBoardingScreen = '/onboarding';
  static const String getStartedScreen = '/getStarted';
  static const String homeScreen = '/home';
}

final routes = {
  AppRouts.initialRoute: (context) => const LoginScreen(),
  AppRouts.onBoardingScreen: (context) => const OnBoardingScreen(),
  AppRouts.getStartedScreen: (context) => const ChatBotScreen(),
  AppRouts.homeScreen: (context) => const HomeScreen(),
};
