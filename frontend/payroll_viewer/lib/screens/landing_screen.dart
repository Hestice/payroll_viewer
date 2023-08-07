import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LandingScreen extends StatefulWidget {
  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  bool _isBottomContainerVisible = false;

  void _toggleBottomContainer() {
    setState(() {
      _isBottomContainerVisible = !_isBottomContainerVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(// Call this function when you tap on the screen
        child: Stack(
          children: [
            GestureDetector(
              onTap: _toggleBottomContainer, 
              child: Container(
                color: Color(0xFF4890D2), // Set the background color
                child: Align(
                  alignment: Alignment.topCenter,
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                    height: _isBottomContainerVisible ? MediaQuery.of(context).size.height - 200 : MediaQuery.of(context).size.height,
                    child: Image.asset(
                      'assets/images/ncca_logo.png',
                      height: 150,
                    ),
                  ),
                ),
              )
            ),
            AnimatedPositioned(
              duration: Duration(milliseconds: 500),
              curve: Curves.easeInOut,
              left: 0,
              right: 0,
              bottom: _isBottomContainerVisible ? 0 : -300,
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(60)),
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  height: 300,
                  color: Colors.white,
                  padding: EdgeInsets.fromLTRB(20, 40, 20, 16),
                  child: Stack( // Wrap the Column with a Stack
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'WELCOME TO THE NCCA PAYROLL VIEWER MOBILE APP!',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Positioned(
                        bottom: 10,
                        right: 5,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFF4890D2),
                            shape: CircleBorder(),
                          ),
                          onPressed: () {
                            GoRouter.of(context).go('/login_screen');
                            print('Next Button Clicked');
                          },
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 24,
                          ),
                        ),
                      ),
                    ],
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
