import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF4890D2),
      child: Scaffold(
      backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _requestPayroll(),
                      _payrollHistory(),
                      _payslipArchive(),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 10,
                right: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '08 / 03/ 23',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      '11:55 am',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                )
              ),
              Positioned(
                top: 10,
                left: 5,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: CircleBorder(),
                  ),
                  onPressed: () {
                    GoRouter.of(context).go('/login_screen');
                    print('Back Button Clicked');
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Color(0xFF4890D2),
                    size: 24,
                  ),
                ),
              ),
            ]
          ),
        ),
      ),
    );
  }

  Widget _requestPayroll() {
    return Container(
      padding: EdgeInsets.all(16),
      child: Text(
        'Section 1',
        style: TextStyle(fontSize: 24, color: Colors.white),
      ),
    );
  }

  Widget _payrollHistory() {
    return Container(
      padding: EdgeInsets.all(16),
      child: Text(
        'Section 2',
        style: TextStyle(fontSize: 24, color: Colors.white),
      ),
    );
  }

  Widget _payslipArchive() {
    return Container(
      padding: EdgeInsets.all(16),
      child: Text(
        'Section 3',
        style: TextStyle(fontSize: 24, color: Colors.white),
      ),
    );
  }
}
