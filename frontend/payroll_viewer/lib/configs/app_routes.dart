import 'package:go_router/go_router.dart';
import '../screens/login_screen.dart';

var router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => LoginScreen(), //removed constructor property. Should be const, when we start developing with forms and backend.
    ),
    //add other paths and routes to builders here
  ]
);