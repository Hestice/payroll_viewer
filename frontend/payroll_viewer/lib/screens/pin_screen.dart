import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
                    SizedBox(height: 40,),
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
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Enter your PIN:',
            style: TextStyle(fontSize: 18.0, color: Color(0xFF4890D2)),
          ),
        ),
        Container(
          padding: EdgeInsets.all(16.0),
          child: Text(
            pin,
            style: TextStyle(fontSize: 32.0, letterSpacing: 16.0),
          ),
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
            PinButton(
              text: '0',
              onPressed: () => _handleKeyPress('0'),
            ),
            PinButton(
              text: 'Delete',
              onPressed: () => _handleKeyPress('delete'),
            ),
          ],
        ),
      ],
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
      margin: EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text, style: TextStyle(fontSize: 20.0)),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(16.0),
          shape: CircleBorder(),
        ),
      ),
    );
  }
}
