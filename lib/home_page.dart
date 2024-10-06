import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker_app/image_picker_helper.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  File? image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          image == null
              ? const Icon(Icons.image, size: 150)
              : Image.file(image!),
          ElevatedButton(
              onPressed: () async {
                image = await ImagePickerHelper.pickImage();
                setState(() {});
              },
              onLongPress: () async {
                image = await ImagePickerHelper.captureImage();
                setState(() {});
              },
              child: const Text("Capture/Choose Image")),
        ],
      ),
    ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
