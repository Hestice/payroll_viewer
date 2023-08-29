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
              // Time and Date Widget (Upper Right)
              Positioned(
                top: 10,
                right: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '08 / 03 / 23',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      '11:55 am',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
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
                            color: Color.fromARGB(255, 255, 255, 255)
                                .withOpacity(0.16),
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
                                  GoRouter.of(context).go(
                                      '/viewer_screen'); // Action for "Payslip Archive" button
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
                            color: Color.fromARGB(255, 45, 45, 45)
                                .withOpacity(0.16),
                            margin: EdgeInsets.symmetric(vertical: 10),
                          ),
                          // Logout Button (Lower Right)
                          Positioned(
                            bottom: 20,
                            right: 20,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                onPrimary: Color.fromRGBO(45, 90, 138, 0.22),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    side: BorderSide(
                                      color: Color.fromRGBO(45, 90, 138, 0.22),
                                      width: 1.0,
                                    )),
                                minimumSize: Size(120, 49),
                              ),
                              onPressed: () {
                                GoRouter.of(context).go(
                                    '/login_screen'); // Action for "Payslip Archive" button
                              },
                              child: Text(
                                'Log out',
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                ),
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
