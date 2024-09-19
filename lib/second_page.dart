// ignore_for_file: unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {

  final String? message;

  const SecondPage(this.message, {super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.message!),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {
              Navigator.pop(context);
            }, child: const Text("Return"),
            ),
          ],
        ),
      ),
    );
  }
}