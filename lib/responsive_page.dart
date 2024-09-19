import 'dart:math';
import 'package:flutter/material.dart';

class ResponsivePage extends StatelessWidget {
  ResponsivePage({super.key});

  final List<Color> _colors = [
    Colors.amber,
    Colors.black,
    Colors.cyan,
    Colors.deepOrange,
    Colors.green,
    Colors.indigo,
    Colors.blueAccent,
    Colors.limeAccent,
  ];

  final Random _random = Random();

  List<Widget> _generateContainer() {
    return List<Widget>.generate(20, (index) {
      return Container(
        margin: const EdgeInsets.all(8),
        color: _colors[_random.nextInt(_colors.length)],
        height: 100,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Responsive Page"),
      ),
      body: LayoutBuilder(builder: (context, _) {
        final screenWidth = MediaQuery.of(context).size.width;
        final isSmallScreen = screenWidth < 393;

        return isSmallScreen
            ? ListView(children: _generateContainer())
            : GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: screenWidth ~/ 200, // adjust column count based on screen width
                ),
                itemCount: 20,
                itemBuilder: (context, index) {
                  return _generateContainer()[index];
                },
              );
      }),
    );
  }
}