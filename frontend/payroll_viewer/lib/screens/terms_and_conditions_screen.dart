import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../common/checkbox_common.dart';


class TermsAndConditionsScreen extends StatefulWidget {
  const TermsAndConditionsScreen({super.key});

  @override
  State<TermsAndConditionsScreen> createState() => _TermsAndConditionsScreenState();
}

class _TermsAndConditionsScreenState extends State<TermsAndConditionsScreen> {
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
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(30, 0, 30, 150),
                    child:Stack(
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            margin: const EdgeInsets.only(top: 170.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Color(0xFFD1DBE5),
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 40,
                                right: 40,
                                top: 20,
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    "Terms and Conditions".toUpperCase(),
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontSize: 18, // Adjust the font size as needed // You can adjust the fontWeight too
                                    ),
                                  ),

                                  SizedBox(height: 20,),
                                  Expanded(
                                    child: SingleChildScrollView(
                                      child: Column (
                                        children: [
                                          Container(
                                            child: Text(
                                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ornare at enim eleifend euismod. Donec et purus ornare, imperdiet velit ut, luctus risus. Cras ante eros, Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ornare at enim eleifend euismod. Donec et purus ornare, imperdiet velit ut, luctus risus. Cras ante eros, Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ornare at enim eleifend euismod. Donec et purus ornare, imperdiet velit ut, luctus risus. Cras ante eros,Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ornare at enim eleifend euismod. Donec et purus ornare, imperdiet velit ut, luctus risus. Cras ante eros,  ",
                                              textAlign: TextAlign.justify,
                                            ),
                                          ),
                                          SizedBox(height: 20,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              CheckboxCommon(),
                                              Text(
                                                "I agree".toUpperCase(),
                                                style: TextStyle(
                                                  fontSize: 18, // Adjust the font size as needed // You can adjust the fontWeight too
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      )
                                    ),
                                  ),
                                  SizedBox(height: 110,), //this adjusts the space below the long text
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                            child: Image(
                              image: AssetImage('assets/elements/terms_icon.png'),
                          ),
                        ),
                        //proceed button
                        Positioned(
                          bottom: 20,
                          right: 0,
                          child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {
                                //if successful, go to email sent screen
                                GoRouter.of(context).go('/home_screen');
                                print('Proceed Clicked');
                              },
                              child: Text(
                              'PROCEED',
                                style: TextStyle(color: Colors.grey.shade800),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFF4890D2),
                                shape: CircleBorder(),
                              ),
                              onPressed: () {
                                //if successful, go to email sent screen
                                GoRouter.of(context).go('/home_screen');
                                print('Proceed Button Clicked');
                              },
                              child: Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 24,
                              ),
                            ),
                          ],
                        ),
                        ),
                      ],
                    ) 
                  ),
                  //ncca footer
                  Padding(
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
                  Padding(
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
                        'Report Problem',
                          style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.white,
                          ),
                        ),                          
                      ),
                    ),
                  ),
                ],
              )
            ]
          ),
        ),
      ),
    );
  }
}