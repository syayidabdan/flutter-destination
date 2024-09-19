// ignore_for_file: unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  final List<int> numberList =  const [1,2,3,4,5,6,7,8,9,10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text("List Student"),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemCount: numberList.length,
        itemBuilder: (BuildContext contex, int index){
          return Container(
            height: 250,
            decoration: const BoxDecoration(
              color: Colors.grey,
              border: Border.symmetric(
                horizontal: BorderSide(color: Colors.black, width: 3),
                ),
            ),
            child: Center(child: Text("${numberList[index]}",
            style: const TextStyle(
              fontSize: 50, fontWeight: FontWeight.bold),
            ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(color: numberList[index] % 2 == 0 ? Colors.amber : Colors.green, thickness: 20);
        },
        ),
      );
  }
}