import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../common/pin_display_common.dart';
class PinScreen extends StatefulWidget {
  const PinScreen({super.key});

  @override
  State<PinScreen> createState() => _PinScreenScreenState();
}

class _PinScreenScreenState extends State<PinScreen> {
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
                Column(
                  children: [
                    SizedBox(height: 70,),
                    Align(
                      alignment: Alignment.topCenter,
                        child: Image(
                          image: AssetImage('assets/elements/security_icon.png'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(70, 20, 70, 16),
                      child: Text(
                        "YOUR SAFETY IS OUR UTMOST PRIORITY LOREM EPSUM LOREN, CREATE A PIN FOR A SAFER KINEME",
                        textAlign: TextAlign.justify,
                        ),
                      ),
                    
                    Container(
                      margin: new EdgeInsets.symmetric(horizontal: 30.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Color(0xFFD1DBE5),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: PinInputWidget(),
                    ),
                    
                  ]
                ),
            ]
          ),
        ),
      ),
    );
  }
}

class PinInputWidget extends StatefulWidget {
  @override
  _PinInputWidgetState createState() => _PinInputWidgetState();
}

class _PinInputWidgetState extends State<PinInputWidget> {
  String pin = '';

  void _handleKeyPress(String digit) {
    setState(() {
      if (digit == 'delete') {
        if (pin.isNotEmpty) {
          pin = pin.substring(0, pin.length - 1);
        }
      } else if (pin.length < 4) {
        pin += digit;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 68),
      child: Column(
        children: [
          SizedBox(height: 20,),
          //this is the pin input display
          Container(
            padding: EdgeInsets.all(16.0),
            child: PinDisplay(pin: pin),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (var i = 1; i <= 3; i++)
                PinButton(
                  text: '$i',
                  onPressed: () => _handleKeyPress('$i'),
                ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (var i = 4; i <= 6; i++)
                PinButton(
                  text: '$i',
                  onPressed: () => _handleKeyPress('$i'),
                ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (var i = 7; i <= 9; i++)
                PinButton(
                  text: '$i',
                  onPressed: () => _handleKeyPress('$i'),
                ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(width: 65.0), 
              PinButton(
                text: '0',
                onPressed: () => _handleKeyPress('0'),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal:8.5), // Adjust padding as needed
                child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () => _handleKeyPress('delete'),
                ),
              )
            ],
          ),
          SizedBox(height: 40,),
        ],
      ),
    );
  }
}

class PinButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  PinButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric( vertical: 6, horizontal: 0),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text, style: TextStyle(fontSize: 15.0)),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(10.0),
          shape: CircleBorder(),
        ),
      ),
    );
  }
}
