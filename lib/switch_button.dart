// ignore_for_file: unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchButton extends StatefulWidget {
  const SwitchButton({super.key});

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  bool _switch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _switch ? Colors.black : Colors.white,
        title: Text("Switch Button",
        style: TextStyle(
          color: _switch ? Colors.white : Colors.black
        ),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: _switch ? Colors.black : Colors.white
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.light_mode_sharp, color: _switch ? Colors.white : Colors.yellow,),
              Switch(value: _switch, onChanged: (value){
                setState(() {
                  _switch = value;
                });
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: _switch ? Colors.white : Colors.black,
                    duration: const Duration(milliseconds: 20),
                    content: Text(_switch? "Dark mode is on" : "Dark Mode is Off",
                    style: TextStyle(
                      color: _switch ? Colors.black : Colors.white
                    ),
                    ),
                    ),
                );
              },
              ),
              Icon(Icons.dark_mode_sharp, color: _switch ? Colors.yellow : Colors.black,),
            ],
          ),
        ),
      ),
    );
  }
}