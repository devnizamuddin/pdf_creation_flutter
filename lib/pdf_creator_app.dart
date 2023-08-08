import 'package:flutter/material.dart';
import 'package:pdf_creation_flutter/screens/home/home_screen.dart';
import 'package:pdf_creation_flutter/screens/pdf_viewer/pdf_viewer_screen.dart';

class PDFCreatorApp extends StatelessWidget {
  const PDFCreatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        PdfViewerScreen.routeName: (_) => const PdfViewerScreen(),
      },
    );
  }
}
