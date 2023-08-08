import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf_creation_flutter/screens/home/home_controller.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    HomeController homeController = HomeController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('PDF Creator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () async {
                  File? file =
                      await homeController.generateInvoice(PdfPageFormat.a4);
                  if (file != null) {
                    if (context.mounted) {
                      homeController.viewPdf(context, file);
                    }
                  }
                },
                child: const Text('Create & View Invoice'))
          ],
        ),
      ),
    );
  }
}
