// ignore_for_file: unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController _fullname = TextEditingController();
  final TextEditingController _birthday = TextEditingController();
  final TextEditingController _phone = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text("Register",
        style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text("Register Sekarang!",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: _fullname,
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
                    color: Colors.grey
                  ),
                ),
                prefixIcon: Icon(Icons.account_circle),
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
            TextField(
              controller: _birthday,
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
                    color: Colors.grey
                  ),
                ),
                prefixIcon: Icon(Icons.cake),
                hintText: "Masukkan Hari Ulang Tahun Anda!",
                labelText: "Birthday",
                labelStyle: TextStyle(
                  color: Colors.black
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: _phone,
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
                    color: Colors.grey
                  ),
                ),
                prefixIcon: Icon(Icons.phone),
                hintText: "Masukkan Nomor Telephon Anda!",
                labelText: "Number",
                labelStyle: TextStyle(
                  color: Colors.black
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
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
                    color: Colors.grey
                  ),
                ),
                prefixIcon: Icon(Icons.password),
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
            ElevatedButton(onPressed: () {
              setState(() {
                showDialog(context: context, builder: (context) {
                  return AlertDialog(
                    content: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("Nama Anda: ${_fullname.text}"),
                        Text("Hari Ulang Tahun Anda: ${_birthday.text}"),
                        Text("Nomor Telephone Anda: ${_phone.text}"),
                        Text("Password Anda: ${_phone.text}"),
                      ],
                    ),
                  );
                });
              });
            }, child: const Text("Submit",
            style: TextStyle(fontSize: 50, color: Colors.black),
            ),
            ),
          ],
        ),
      ),
    );
  }
}