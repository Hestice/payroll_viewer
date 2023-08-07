import 'package:go_router/go_router.dart';
import 'package:payroll_viewer/screens/home_screen.dart';
import '../screens/login_screen.dart';

var router = GoRouter(
  routes: [
    GoRoute(
      path: '/', //default screen when opening app
      builder: (context, state) => LoginScreen(), //removed constructor property. Should be const, when we start developing with forms and backend.
    ),
    GoRoute(
      path: '/pdf_viewer',
      builder: (context, state) => HomeScreen(),
    ),
    //add other paths and routes to builders here
  ]
);