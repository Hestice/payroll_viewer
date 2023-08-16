import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class EmailSentScreen extends StatefulWidget {
  const EmailSentScreen({super.key});

  @override
  State<EmailSentScreen> createState() => _EmailSentScreenState();
}

class _EmailSentScreenState extends State<EmailSentScreen> {
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
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(30, 70, 30, 120),
                    child:Stack(
                      children: [
                        Align(
                        alignment: Alignment.topCenter,
                          child: Container(
                          margin: const EdgeInsets.only(top: 120.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Color(0xFFD1DBE5),
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 40, 
                                right: 40,
                                //padding for the Form Content
                                top: 80,
                              ),
                              child: Column(
                                children: [
                                  Text(
                                  "We've sent an email to".toUpperCase(),
                                  textAlign: TextAlign.justify,
                                  ),
                                  Text(
                                  "juandelacruz@ncca.gov.ph",
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Color(0xAABEBDBD),
                                    ),
                                  ),
                                  SizedBox(height: 30,),
                                  Text(
                                  "verification instruction, this screen will be the landing screen > redirected to email account to confirm via email. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ornare at enim eleifend euismod.".toUpperCase(),
                                  textAlign: TextAlign.justify,
                                  ),
                                ],
                              ),
                            ),
                          )
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                            child: Image(
                              image: AssetImage('assets/elements/email_sent_icon.png'),
                          ),
                        ),
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
                        )
                      ],
                    ) 
                  ),
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
                ],
              )
            ]
          ),
        ),
      ),
    );
  }
}