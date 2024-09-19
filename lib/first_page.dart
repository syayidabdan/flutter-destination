// ignore_for_file: unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_flutter_baru/layout_builder.dart';
import 'package:project_flutter_baru/responsif_layout.dart';
import 'package:project_flutter_baru/responsive_page.dart';
import 'package:project_flutter_baru/second_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  final TextEditingController _message = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Page",
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),
        ),
        backgroundColor: const Color.fromARGB(255, 133, 255, 174),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: _message,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Message"),
                  hintText: "Write Your Message Here!"
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (_message.text == ""){
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Data Masih Kosong"),
                    ),
                    );
                    return;
                }
                Navigator.push(context, MaterialPageRoute(builder: (context){
                return SecondPage(_message.text);
                },
              ),
              );
            }, child: const Text("Next Page")),
            const SizedBox(height: 30,),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyLayout(),
                  ),
                );
              },
              child: const Text('Go to MyLayout'),
            ),
            const SizedBox(height: 30,),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyLayoutBuilder(),
                  ),
                );
              },
              child: const Text('Layout Builder'),
            ),
            const SizedBox(height: 30,),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResponsivePage(),
                  ),
                );
              },
              child: const Text('Responsive Page'),
            ),
          ],
        ),
      ),
    );
  }
}