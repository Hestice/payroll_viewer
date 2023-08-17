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
              Padding( //Footer
                    padding: 
                    EdgeInsets.only(
                      bottom: 20,
                    ),
                    child: 
                      Align(
                      alignment: Alignment.bottomCenter,
                        child: Image(
                          image: AssetImage('assets/images/ncca_footer.png'),
                      ),
                    ),
                  ),
              Padding( //Report a Problem
                  padding: 
                  EdgeInsets.only(
                    bottom: 80,
                  ),
                  child: 
                    Align(
                    alignment: Alignment.bottomCenter,
                      child: GestureDetector(
                        onTap: () {
                        GoRouter.of(context).go('/report_screen');
                        print('report problem Clicked');
                      },
                      child: Text(
                      'Report a Problem',
                        style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.white,
                        ),
                      ),                          
                    ),
                  ),
                ),
              Container(
                margin: EdgeInsets.fromLTRB(30, 80, 30, 120),
                // decoration: BoxDecoration(
                //         border: Border.all(width: 1.0, color: Color.fromARGB(255, 255, 0, 0)),
                // ), 
                //FOR DEBUGGING PURPOSES ONLY
                child: Align (
                  alignment: Alignment.topCenter,
                  child: SingleChildScrollView(
                    child: Column (
                      children: [
                        _requestPayroll(),
                        SizedBox(height: 16,),
                        _requestPayroll(),
                        SizedBox(height: 16,),
                        _requestPayroll(),
                        _payrollHistory(),
                        _payslipArchive(),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned( //Date
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
              Positioned( // Time
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
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(top:30,),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Color(0xFFD1DBE5),
            ),
            borderRadius: BorderRadius.all(Radius.circular(20))
          ),
          child: Column(
            children: [
              Text('Good day, [name]!'),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                ),
                onPressed: () {
                  GoRouter.of(context).go('/payroll_screen');
                  print('Back Button Clicked');
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Color(0xFF4890D2),
                  size: 24,
                ),
              ),
              Text('Lorem Epsum Important Details  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ornare at enim eleifend euismod. Donec et purus ornare, imperdiet velit ut, luctus risus. Cras ante eros, '),
            ],
          ),
        ),
         Positioned(
          top: 0,
          right: 30,
            child: Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey,
            ),
          ),
        ),
      ],
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
