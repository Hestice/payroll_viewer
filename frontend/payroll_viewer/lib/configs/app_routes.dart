import 'package:go_router/go_router.dart';
import 'package:payroll_viewer/screens/home_screen.dart';
import '../screens/login_screen.dart';
import '../screens/landing_screen.dart';
import '../screens/create_account_screen.dart';
import '../screens/pin_screen.dart';
import '../screens/email_sent_screen.dart';
import '../screens/terms_and_conditions_screen.dart';

var router = GoRouter(
  routes: [
    GoRoute(
      path: '/', //default screen when opening app
      builder: (context, state) => LandingScreen(), //removed constructor property. Should be const, when we start developing with forms and backend.
    ),
    GoRoute(
      path: '/login_screen',
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: '/create_account_screen',
      builder: (context, state) => CreateAccountScreen(),
    ),
    GoRoute(
      path: '/pin_screen',
      builder: (context, state) => PinScreen(),
    ),
    GoRoute(
      path: '/email_sent_screen',
      builder: (context, state) => EmailSentScreen(),
    ),
    GoRoute(
      path: '/terms_and_conditions_screen',
      builder: (context, state) => TermsAndConditionsScreen(),
    ),
    GoRoute(
      path: '/home_screen',
      builder: (context, state) => HomeScreen(),
    ),
    //add other paths and routes to builders here
  ]
);