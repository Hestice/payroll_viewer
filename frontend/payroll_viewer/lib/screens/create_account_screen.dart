import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:payroll_viewer/common/shadow_text_field_common.dart';
import 'package:payroll_viewer/helpers/validator_helper.dart';
class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nccaEmailController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController phoneNunmberController = TextEditingController();
  final TextEditingController verificationController = TextEditingController();

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
              Align(
                alignment: Alignment.center,
                  child: SingleChildScrollView(
                    child: Stack(
                    children: [
                      Container(
                        //this is the margin of Container + Picture
                        margin: EdgeInsets.fromLTRB(30, 80, 30, 90),
                          child: Stack(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 80.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Color(0xFFD1DBE5),
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 20, 
                                  right: 20,
                                  //padding for the Form Content
                                  top: 30,
                                ),
                                child: Column(
                                children: [
                                  SizedBox(height: 30.0),
                                  //text here (Let's Get Started)
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Text(
                                      "LET'S GET STARTED",
                                    ),
                                  ),

                                  SizedBox(height: 16.0),
                                  BuildShadowedTextFieldCommon(
                                    controller: nccaEmailController,
                                    hintText: 'juandelacruz@ncca.mail.gov.ph',
                                    labelText: 'NCCA Email',
                                    obscureText: false,
                                    validator: emailValidator,
                                    ),

                                  SizedBox(height: 16.0),
                                  BuildShadowedTextFieldCommon(
                                    controller: fullNameController,
                                    hintText: 'e.g. Juan Dela Cruz',
                                    labelText: 'Full Name',
                                    obscureText: false,
                                    validator: fullNameValidator,
                                    textCapitalization: TextCapitalization.words,
                                  ),

                                  SizedBox(height: 16.0),
                                  BuildShadowedTextFieldCommon(
                                    controller: phoneNunmberController,
                                    hintText: '09...',
                                    labelText: 'Phone Number',
                                    obscureText: false,
                                    validator: phoneNumberValidator
                                  ),

                                  SizedBox(height: 16.0),
                                  Row(
                                  children: [
                                    Expanded(
                                      child: BuildShadowedTextFieldCommon(
                                        controller: verificationController,
                                        hintText: '6 digit verification',
                                        labelText: 'Verification',
                                        obscureText: true,
                                        validator: numericValidator,
                                      ),
                                    ),
                                    SizedBox(width: 8,),
                                    ElevatedButton(
                                      onPressed: () {
                                        // Add your onPressed logic here
                                      },
                                      style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFFF7C51)),
                                        side: MaterialStateProperty.all<BorderSide>(
                                          BorderSide(color: Color(0xFFD1DBE5),),
                                        ),
                                        fixedSize: MaterialStateProperty.all<Size>(
                                          Size.fromHeight(55), // Set the specific height of the button
                                        ),
                                        shape: MaterialStateProperty.all<OutlinedBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10.0), // Set the border radius
                                          ),
                                        ),
                                      ),
                                      child: Text(
                                        'VERIFY',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 30.0),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        GoRouter.of(context).go('/pin_screen');
                                        print('Proceed Clicked');
                                        //implement proceed functionality
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
                                        GoRouter.of(context).go('/pin_screen');
                                        print('Proceed Button Clicked');
                                        //implement proceed functionality
                                      },
                                      child: Icon(
                                        Icons.arrow_forward,
                                        color: Colors.white,
                                        size: 24,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10.0),
                                ],
                              ),
                              ),
                            ),
                            Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                      child: Container(
                                      width: 120,
                                      height: 120,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 60,
                                    left: 80,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Color(0xFFFF5C0C),
                                        shape: CircleBorder(),
                                        side: BorderSide(width: 2, color: Colors.white), // Add a white border
                                      ),
                                      onPressed: () {
                                        // Function for uploading photo
                                        print('Upload Photo Button Clicked');
                                      },
                                      child: Icon(
                                        Icons.add, // Change the icon to a plus sign
                                        color: Colors.white,
                                        size: 24,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  
                ),
              ),
              //back button
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
            ]
          ),
        ),
      ),
    );
  }
}