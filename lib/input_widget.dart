// ignore_for_file: unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InputWidget extends StatefulWidget {
  const InputWidget({super.key});

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  final TextEditingController _password = TextEditingController();
  final TextEditingController _name = TextEditingController();
  String? _gender;
  bool? _agreement = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input Widget"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _password,
              style: const TextStyle(
                color: Colors.black
              ),
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red
                  ),
                ),
                prefixIcon: Icon(Icons.verified_user),
                suffixIcon: Icon(Icons.remove_red_eye),
                hintText: "Masukkan Password Anda!",
                labelText: "Password",
                labelStyle: TextStyle(
                  color: Colors.black
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: _name,
              onSubmitted: (value){
                print("text input: $value");
              },
              style: const TextStyle(
                color: Colors.black
              ),
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red
                  ),
                ),
                prefixIcon: Icon(Icons.supervised_user_circle_outlined),
                hintText: "Masukkan Nama Anda!",
                labelText: "Name",
                labelStyle: TextStyle(
                  color: Colors.black
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          const Text("Gender"),
          MyListTile(context, "Laki-laki"),
          MyListTile(context, "Perempuan"),
          const Text("Persetujuan"),
          ListTile(
            leading: Checkbox(
              value: _agreement,
              onChanged: (value){
                setState(() {
                  _agreement = value;
                },
                );
              },
            ),
            title: const Text("Agree"),
          ),
            Center(
              child: ElevatedButton(onPressed: _agreement ! ? () {
                setState(() {
                  showDialog(context: context, builder: (context) {
                    return AlertDialog(
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("Passwordnya: ${_password.text}"),
                          Text("Nama Anda: ${_name.text}"),
                        ],
                      ),
                    );
                  });
                });
              }: null,
                child: const Text("Submit"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  ListTile MyListTile(BuildContext context, data) {
    return ListTile(
          title: Text(data),
          leading: Radio(value: data, groupValue: _gender, onChanged: (value){
            setState(() {
              _gender = value;
            });

            MySnackbar(context);
          },
          ),
        );
  }

  void MySnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Kamu memilih $_gender"),
      ));
  }
}