// ignore_for_file: unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyLayout extends StatelessWidget {
  const MyLayout({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Responsif"),
        centerTitle: true,
      ),
      backgroundColor: Colors.blueGrey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("Screen width: ${screenSize.width.toStringAsFixed(2)}", style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10,),
          Text("Screen width: ${orientation.name}", style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}