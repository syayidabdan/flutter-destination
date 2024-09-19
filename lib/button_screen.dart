// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonScreen extends StatefulWidget {
  const ButtonScreen({super.key});

  @override
  State<ButtonScreen> createState() => _ButtonScreenState();

}

class _ButtonScreenState extends State<ButtonScreen> {
  String? language;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: const Text("Button Screen",
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: () {},
             child: const Text("Elevated Button"),
            ),
             TextButton(onPressed: () {},
              child: const Text("Text Button"),
            ),
             OutlinedButton(onPressed: () {},
              child: const Text("Outline Button"),
            ),
            IconButton(onPressed: () {},
             icon: const Icon(Icons.volume_down),
            ),
            DropdownButton(items: <DropdownMenuItem<String>> [
              DropdownMenuItem(
                value: "dart",
                child: Text("Dart"),
              ),
              DropdownMenuItem(
                value: "flutter",
                child: Text("Flutter"),
              ),
            ],
            value: language,
            hint: Text("Pilih Bahasa"),
            onChanged: (String? value) {
              setState((){
                language = value;
              });
            }
            ),
          ],),
      ),
    );
  }
}