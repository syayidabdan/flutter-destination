// ignore_for_file: unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpandedScreen extends StatelessWidget {
  const ExpandedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expanded Screen"),
        centerTitle: true,
      ),
      body: const Column(
        children: [
          Row(
            children: [ExpandedWidget(), ExpandedWidget()],
          ),
          Row(
            children: [ExpandedWidget(), FlexibleWidget()],
          ),
          Row(
            children: [FlexibleWidget(), FlexibleWidget()],
          ),
        ],
      ),
    );
  }
}

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
      decoration: BoxDecoration(
        color: Colors.teal,
        border: Border.all(color: Colors.white),
      ),
      child: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          "Expanded",
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    ));
  }
}

class FlexibleWidget extends StatelessWidget {
  const FlexibleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
      decoration: BoxDecoration(
        color: Colors.teal,
        border: Border.all(color: Colors.white),
      ),
      child: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          "Flexible",
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    ));
  }
}