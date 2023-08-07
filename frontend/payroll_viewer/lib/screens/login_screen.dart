import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LoginScreenState createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              width: 250,
              child: Image.asset(
                'assets/elements/orange_corner_spot.png',
                fit: BoxFit.fitWidth,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              width: 390,
              child: Image.asset(
                'assets/elements/blue_corner_spot.png',
                fit: BoxFit.fitWidth,
              ),
            ),
            Positioned(
              bottom: 70,
              left: 0,
              width: 300,
              child: Image.asset(
                'assets/elements/yellow_edge_spot.png',
                fit: BoxFit.fitWidth,
              ),
            ),
            
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Image.asset(
                    'assets/images/ncca_logo.png',
                    height: 150,
                  ),
                  const Text(
                    'PAYROLL VIEWER',
                    style: TextStyle(color: Color(0xFF424242), fontSize: 16),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
            Positioned(
              top: 10,
              left: 5,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF4890D2),
                  shape: CircleBorder(),
                ),
                onPressed: () {
                  // Implement the back button functionality here
                  print('Back Button Clicked');
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 24,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                  decoration: const BoxDecoration(
                  color: Colors.transparent, 
                ),
                child: Flexible(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 140),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      
                          //Text field for username/email
                          TextFormField(
                            controller: emailController,
                            obscureText: false,
                            style: const TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              hintText: 'Username/Email',
                              hintStyle: TextStyle(color: Colors.grey.shade500),
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(1.0),
                                borderSide: BorderSide(color: Color.fromARGB(55, 45, 90, 138)),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 15,
                                horizontal: 15,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your email';
                              }
                              return null;
                            },
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            enabled: true,
                          ),
                          SizedBox(height: 16.0),

                          //Text field for password 
                          TextFormField(
                            controller: passwordController,
                            obscureText: false,
                            style: const TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              hintText: 'Password',
                              hintStyle: TextStyle(color: Colors.grey.shade500),
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(1.0),
                                borderSide: BorderSide(color: Color.fromARGB(55, 45, 90, 138)),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 15,
                                horizontal: 15,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your password';
                              }
                              return null;
                            },
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            enabled: true,
                          ),
                          SizedBox(height: 16.0),

                          //forgot password
                          GestureDetector(
                            onTap: () {
                              print('Forgot Password? Clicked');
                            },
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                'Forgot Password?',
                                style: TextStyle(color: Colors.grey.shade800),
                              ),
                            ),
                          ),
                          SizedBox(height: 16.0),
                          
                          //Login button
                          ElevatedButton(
                            onPressed: () {
                              GoRouter.of(context).go('/home_screen');
                              // Implement login button functionality here
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                              Color.fromARGB(255, 255, 125, 81),
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(1.0),
                              ),
                              minimumSize: Size(double.infinity, 0),
                            ),
                            child: Text(
                              'Login',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                            'Don\'t have an account yet?',
                             style: TextStyle(
                                  color: Colors.white),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              print('Create an account? Clicked');
                            },
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Create An Account',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  decorationColor: Colors.white,
                                  color: Colors.white
                                ),
                              ),
                            ),
                          ),
                          
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ], 
        ),
      ),
    );
  }
}
