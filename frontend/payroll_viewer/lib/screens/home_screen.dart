import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('[Username]'),
      ),
      body: Container(
        color: Color(0xFF4890D2), // Set the background color
        child: ListView(
          children: [
            _requestPayroll(),
            _payrollHistory(),
            _payslipArchive(),
          ],
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
