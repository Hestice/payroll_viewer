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
    return 
    Container(
      color: Color(0xFF4890D2),
        child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Stack(
            children: [
              GestureDetector(
                onTap: _toggleBottomContainer, 
                child: Container( // Set the background color
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
                    padding: EdgeInsets.fromLTRB(40, 40, 40, 16),
                    child: Stack( // Wrap the Column with a Stack
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ornare at enim eleifend euismod. Donec et purus ornare, imperdiet velit ut, luctus risus. Cras ante eros, ',
                              style: TextStyle(fontSize: 18, color: Colors.black),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                        Positioned(
                          bottom: 10,
                          right: -10,
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
      ),
    );
  }
}
