import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../common/payslip_item_common.dart';
import '../screens/pdf_view_screen.dart';
import '../services/pdf_api_service.dart';
import '../models/document_info.dart';
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
                // ), FOR DEBUGGING PURPOSES ONLY
                child: Align (
                  alignment: Alignment.topCenter,
                  child: SingleChildScrollView(
                    child: Column (
                      children: [
                        _requestPayroll(),
                        SizedBox(height: 16,),
                        _payrollHistory(),
                        SizedBox(height: 16,),
                        _logout(),
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
          margin: EdgeInsets.only(top:50,),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Color(0xFFD1DBE5),
            ),
            borderRadius: BorderRadius.all(Radius.circular(20))
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: EdgeInsets.fromLTRB( 30, 20, 0, 30, ),
                  child: Text('Good day, [name]!'.toUpperCase()),
                )
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 60),
                width: double.infinity, // Make the button match the column's width
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    side: BorderSide(width: 1, color: Color(0xFFD1DBE5)),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                  onPressed: () {
                    GoRouter.of(context).go('/payroll_screen');
                    print('Request Payroll Clicked');
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10), // Adjust vertical padding
                    child: Text('Request Payroll'),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 60, vertical: 30),
                child: Text(
                  'Lorem Epsum Important Details  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ornare at enim eleifend euismod. Donec et purus ornare, imperdiet velit ut, luctus risus. Cras ante eros, ',
                  textAlign: TextAlign.justify,
                  style: TextStyle(color: Color(0xFFB5B5B5),),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 0,
          right: 30,
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white, // White circle
              border: Border.all(
                color: Colors.grey, // Gray outline color
                width: 1.0, // Outline width
              ),
            ),
          ),
        ),
      ],
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
        borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      child: Column(
        children: Document.doc_list.asMap().entries.map((entry) {
          final index = entry.key;
          final doc = entry.value;

          return Column(
            children: [
              Row(
                children: [
                  Image(image: AssetImage('assets/elements/pdf_icon.png')),
                  SizedBox(width: 20),
                  PayslipItem(
                    date: doc.doc_date ?? '',
                    time: doc.doc_time ?? '', // You can replace this with your own time value
                    description: doc.doc_title ?? '',
                    onViewPressed: () async {
                      print('View Button Clicked');
                      final file = await PDFApi.loadNetwork(doc.doc_link);
                      openPDF(context, file);
                    },
                    onDownloadPressed: () {
                      print('Download Button Clicked');
                      // Implement your download functionality here
                    },
                  ),
                ],
              ),
              if (index != Document.doc_list.length - 1) SizedBox(height: 7), // Add vertical space except for the last item
            ],
          );
        }).toList(),
      )

    );
  }

  Widget _logout() {
    return Container(
      padding: EdgeInsets.all(16),
      child: Positioned(
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
            // Action for logout button
          },
          child: Text(
            'Log out',
            style: TextStyle(
              color: const Color.fromARGB(255, 0, 0, 0),
            ),
          ),
        ),
      ),
    );
  }

   void openPDF(BuildContext context, file) => Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => PDFViewerPage(file: file)),
      );
}
