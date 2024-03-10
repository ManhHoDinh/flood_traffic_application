import 'package:climscan/screen/after_upload_screen.dart';
import 'package:climscan/screen/result_screen.dart';
import 'package:climscan/screen/upload_screen.dart';
import 'package:flutter/material.dart';

import 'screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Face Detection',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: UploadScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
