import 'package:flutter/material.dart';
import 'package:image_picker_app/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Image Picker Guide 📸',
      home: MyHomePage(title: 'Flutter Image Picker Guide 📸'),
    );
  }
}
