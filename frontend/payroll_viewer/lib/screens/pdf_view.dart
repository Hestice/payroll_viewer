import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'dart:async';


class PdfViewerScreen extends StatefulWidget {
  final String path;

  const PdfViewerScreen({required this.path});

  @override
  _PdfViewerScreenState createState() => _PdfViewerScreenState();
}

class _PdfViewerScreenState extends State<PdfViewerScreen> {
  Completer<PDFViewController> _controller = Completer<PDFViewController>();
  int pages = 0;
  bool isReady = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PDF Viewer'),
      ),
      body: Stack(
        children: [
          PDFView(
            filePath: widget.path,
            enableSwipe: true,
            swipeHorizontal: true,
            autoSpacing: false,
            pageFling: false,
            onRender: (_pages) {
              setState(() {
                pages = _pages ?? 0; // Here, if _pages is null, it will be replaced with 0.
                isReady = true;
              });
            },
            onError: (error) {
              print(error.toString());
            },
            onPageError: (page, error) {
              print('$page: ${error.toString()}');
            },
            onViewCreated: (PDFViewController pdfViewController) {
              _controller.complete(pdfViewController);
            },
            onPageChanged: (int? page, int? total) { // Change the parameter types to int?
              if (page != null && total != null) {
                print('page change: $page/$total');
              }
            },
          ),
          !isReady
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Offstage(),
        ],
      ),
    );
  }
}
