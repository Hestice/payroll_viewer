import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../common/payslip_item_common.dart';

class ViewerScreen extends StatefulWidget {
  const ViewerScreen({Key? key}) : super(key: key);

  @override
  State<ViewerScreen> createState() => _ViewerScreenState();
}

class _ViewerScreenState extends State<ViewerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF4890D2),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Stack(children: [
            Padding(
              //Footer
              padding: EdgeInsets.only(
                bottom: 20,
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Image(
                  image: AssetImage('assets/images/ncca_footer.png'),
                ),
              ),
            ),
            Padding(
              //Report a Problem
              padding: EdgeInsets.only(
                bottom: 80,
              ),
              child: Align(
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
              child: Align(
                alignment: Alignment.topCenter,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 16,
                      ),
                      _payrollHistory(),
                      SizedBox(
                        height: 16,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
                //Date
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
                )),
            Positioned(
              // Time
              top: 10,
              left: 5,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: CircleBorder(),
                ),
                onPressed: () {
                  GoRouter.of(context).go('/profile_screen');
                  print('Back Button Clicked');
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Color(0xFF4890D2),
                  size: 24,
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  Widget _payrollHistory() {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Color(0xFFD1DBE5),
        ),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        children: List.generate(10, (index) {
          return Column(
            children: [
              Row(
                children: [
                  Image(image: AssetImage('assets/elements/pdf_icon.png')),
                  SizedBox(
                    width: 20,
                  ),
                  PayslipItem(
                  date: '08/21/23',
                  time: '02:31',
                  description: 'description',
                  onViewPressed: () {
                    print('View Button Clicked');
                    // Implement your view functionality here
                  },
                  onDownloadPressed: () {
                    print('Download Button Clicked');
                    // Implement your download functionality here
                  },
                )
                ],
              ),
              SizedBox(
                height: 7,
              ),
            ],
          );
        }),
      ),
    );
  }
}
