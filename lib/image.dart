// ignore_for_file: unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageMy extends StatefulWidget {
  const ImageMy({super.key});

  @override
  State<ImageMy> createState() => _ImageMyState();
}

class _ImageMyState extends State<ImageMy> {
  final List<String> _imagesUrl = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmer4Ohrzg8NFsb-Ll8bxpKyTCjnpHpXZj2w&s",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/1/13/Facebook_like_thumb.png/800px-Facebook_like_thumb.png",
    "https://asset-a.grid.id/crop/0x0:0x0/700x465/photo/grid/original/134163_tombol-dislike-facebook.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTchaIXEtow5c80MTCcZk_bLgTztPDdNj5MZQ&s",
    "https://yt3.googleusercontent.com/_q52i8bUAEvcb7JR4e-eNTv23y2A_wg5sCz0NC0GrGtcw1CRMWJSOPVHUDh_bngD0q4gMvVeoA=s900-c-k-c0x00ffffff-no-rj"
  ];

int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Image", style: TextStyle(
          fontSize: 50,
          fontFamily: 'NewAmsterdam'
        ),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
            _imagesUrl[_index],
            width: 500,
            height: 250,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: _index == 0 ? null :(){
                  setState(() {
                    _index--;
                  });
                },
                child: const Icon(Icons.navigate_before)),
                ElevatedButton(onPressed: (){
                setState(() {
                _index = (0) % _imagesUrl.length;
                });
                },
                child: const Icon(Icons.refresh)),
                ElevatedButton(onPressed: _index == (_imagesUrl.length) - 1 ? null:(){
                setState(() {
                _index++;
                });
                },
                child: const Icon(Icons.navigate_next)),
              ],
            ),
          ],
        ),

      ),
    );
  }
}