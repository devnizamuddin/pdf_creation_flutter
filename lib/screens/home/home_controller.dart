import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';

import '../../data/pdf_data.dart';
import '../../utils/invoice_generator.dart';
import '../pdf_viewer/pdf_viewer_screen.dart';

class HomeController {
  Future<File?> generateInvoice(PdfPageFormat pageFormat) async {
    final invoiceGenerator = InvoiceGenerator(
      invoiceNumber: '982347',
      products: products,
      customerName: 'Nizam Uddin Shamrat',
      customerAddress: 'M-24, West Merul, Dhaka, Bangladesh',
      paymentInfo:
          'Level-11, Software Technology Park, 49 Kawran Bazar C/A,Dhaka- 1215\nPhone - 01550000001\n Name - Sadia Sultana',
      tax: .15,
      baseColor: PdfColors.amber800,
      accentColor: PdfColors.blueGrey800,
    );

    final Directory? directory = Platform.isAndroid
        ? await getExternalStorageDirectory() //FOR ANDROID
        : await getApplicationDocumentsDirectory(); //FOR iOS

    if (directory != null) {
      final String path = '${directory.path}/example.pdf';
      final File file = File(path);
      debugPrint(file.path);
      return await file
          .writeAsBytes(await invoiceGenerator.buildPdf(pageFormat));
    } else {
      return null;
    }
  }

  void viewPdf(BuildContext context, File file) {
    //Going to Pdf Viewer Screen.
    Navigator.pushNamed(context, PdfViewerScreen.routeName, arguments: file);
  }
}
