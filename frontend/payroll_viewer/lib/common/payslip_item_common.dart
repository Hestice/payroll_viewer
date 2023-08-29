import 'package:flutter/material.dart';

class PayslipItem extends StatefulWidget {
  final String date;
  final String time;
  final String description;
  final VoidCallback onViewPressed;
  final VoidCallback onDownloadPressed;

  const PayslipItem({
    required this.date,
    required this.time,
    required this.description,
    required this.onViewPressed,
    required this.onDownloadPressed,
    Key? key,
  }) : super(key: key);

  @override
  State<PayslipItem> createState() => _PayslipItemState();
}

class _PayslipItemState extends State<PayslipItem> {
  bool showButtons = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.symmetric(horizontal: 0),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Color(0xFFD1DBE5),
            ),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AnimatedSwitcher(
              duration: Duration(milliseconds: 250), // Animation duration
              child: showButtons
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 40,
                          width: 60,
                          child:ElevatedButton(
                            onPressed: widget.onViewPressed,
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFFA3D57C),
                              onPrimary: Colors.white,
                              padding: const EdgeInsets.symmetric(vertical: 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            child: Text('View'),
                          ),
                        ),
                        SizedBox(width: 5),
                        SizedBox(
                          height: 40,
                          width: 90,
                          child: ElevatedButton(
                            onPressed: widget.onDownloadPressed,
                            child: Text('Download'),
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 255, 125, 81),
                              onPrimary: Colors.white,
                              padding:
                                  const EdgeInsets.symmetric(vertical: 1, horizontal: 10),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  : Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(widget.date), // Date
                              Text('  |  '),
                              Text(widget.time), // Time
                            ],
                          ),
                          Text(widget.description),
                        ],
                      ),
                    ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  showButtons = !showButtons; // Toggle button visibility
                });
              },
              child: AnimatedSwitcher(
                duration: Duration(milliseconds: 250), // Animation duration
                child: showButtons
                    ? Icon(
                        Icons.arrow_back,
                        size: 30,
                        key: UniqueKey(), // Provide a unique key for each child
                      )
                    : Icon(
                        Icons.more_vert,
                        size: 30,
                        key: UniqueKey(), // Provide a unique key for each child
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
