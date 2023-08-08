import 'dart:io';

import 'package:flutter/material.dart';
import 'package:printing/printing.dart';

class PdfViewerScreen extends StatefulWidget {
  static const routeName = 'pdfViewerScreen';
  const PdfViewerScreen({super.key});

  @override
  State<PdfViewerScreen> createState() => _PdfViewerScreenState();
}

class _PdfViewerScreenState extends State<PdfViewerScreen> {
  @override
  Widget build(BuildContext context) {
    File file = ModalRoute.of(context)?.settings.arguments as File;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Invoice'),
      ),
      body: PdfPreview(
        build: (format) => file.readAsBytes(),
      ),
    );
  }
}
