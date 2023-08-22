import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Stack(
            children: [
              Positioned(
                top: 10,
                left: 5,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF4890D2),
                    shape: CircleBorder(),
                  ),
                  onPressed: () {
                    GoRouter.of(context).go('/login_screen');
                    print('Back Button Clicked');
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(30, 120, 30, 90),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.0,
                          color: Color.fromRGBO(45, 90, 138, 0.22),
                        ),
                        borderRadius: BorderRadius.circular(26),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: 125,
                            height: 125,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Icon(
                              Icons.person,
                              size: 80,
                              color: Color(0xFF2D5A8A),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'user@example.com',
                            style: TextStyle(
                              color: Color(0xFF2D5A8A),
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'User Name',
                            style: TextStyle(
                              color: Color(0xFF2D5A8A),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'User Info',
                            style: TextStyle(
                              color: Color(0xFF2D5A8A),
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            height: 0.5,
                            color: Colors.black.withOpacity(0.16),
                            margin: EdgeInsets.symmetric(vertical: 10),
                          ),
                          SizedBox(height: 20),
                          Column(
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  onPrimary: Color.fromRGBO(45, 90, 138, 0.22),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    side: BorderSide(
                                      color: Color.fromRGBO(45, 90, 138, 0.22),
                                      width: 1.0,
                                    ),
                                  ),
                                  minimumSize: Size(223, 49),
                                ),
                                onPressed: () {
                                  GoRouter.of(context).go('/home_screen');
                                },
                                child: Text(
                                  'Payroll',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  onPrimary: Color.fromRGBO(45, 90, 138, 0.22),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    side: BorderSide(
                                      color: Color.fromRGBO(45, 90, 138, 0.22),
                                      width: 1.0,
                                    ),
                                  ),
                                  minimumSize: Size(223, 49),
                                ),
                                onPressed: () {
                                  // Action for "Payslip Archive" button
                                },
                                child: Text(
                                  'Payslip Archive',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 0.5,
                            color: Colors.black.withOpacity(0.16),
                            margin: EdgeInsets.symmetric(vertical: 10),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.black,
                              onPrimary: Colors.white,
                              shape: CircleBorder(),
                              minimumSize: Size(61, 28),
                            ),
                            onPressed: () {
                              // Action for logout button
                            },
                            child: Text(
                              'Log out',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
