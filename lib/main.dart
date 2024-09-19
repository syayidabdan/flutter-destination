// ignore_for_file: prefer_const_constructors, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_flutter_baru/belanjaterbaik/main_screen.dart';
//import 'package:project_flutter_baru/first_page.dart';
//import 'package:project_flutter_baru/responsif_layout.dart';
//import 'package:project_flutter_baru/expanded_screen.dart';
//import 'package:project_flutter_baru/my_list_view.dart';
//import 'package:project_flutter_baru/detail_screen.dart';
//import 'package:project_flutter_baru/image.dart';
//import 'package:project_flutter_baru/input_widget.dart';
//import 'package:project_flutter_baru/button_screen.dart';
//import 'package:project_flutter_baru/register.dart';
//import 'package:project_flutter_baru/switch_button.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Itim'
      ),
      home: MainScreen(),
    );
  }
}

