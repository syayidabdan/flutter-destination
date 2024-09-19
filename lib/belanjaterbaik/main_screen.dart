// ignore_for_file: unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project_flutter_baru/model/tourism_place.dart';
import 'package:project_flutter_baru/belanjaterbaik/detail_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Destinasi Belanja Terbaik di Dunia"),
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 176, 106, 231),
              Color.fromARGB(255, 166, 112, 232),
              Color.fromARGB(255, 131, 123, 232),
              Color.fromARGB(255, 104, 132, 231)
            ])
          ),
        ),
        centerTitle: true,
      ),
      body:
       LayoutBuilder(builder: (context, BoxConstraints contraints){
        if (contraints.maxWidth <= 600){
          return const MyListView();
        } else if(contraints.maxWidth  <= 702){
          return const MyGridView(gridCount: 2,);
        } else if(contraints.maxWidth  <= 982){
          return const MyGridView(gridCount: 3,);
        } else{
          return const MyGridView(gridCount: 4,);
        }
      },
      ),
    );
  }
}

class MyListView extends StatelessWidget {
  const MyListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tourismPlaceList.length,
      itemBuilder: (context, index) {
        final TourismPlace place = tourismPlaceList
        [index];
        return InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(
            place: place,
          )),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(15), bottomLeft: Radius.circular(15)),
                    child: Image.asset(place.imageAsset),
                    ),
                  ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(place.nama,
                        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(place.lokasi),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
      },
    );
  }
}

class MyGridView extends StatelessWidget {
  final int gridCount;
  const MyGridView({super.key, required this.gridCount});

  @override
  Widget build(BuildContext context) {
    return Padding
    (padding: const EdgeInsets.all(24),
    child: GridView.count(
      crossAxisCount: gridCount,
    children: tourismPlaceList.map((place)=> InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(
            place: place,
          )),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: Image.asset(place.imageAsset, fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                    ),
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.only(left: 4, top: 4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(place.nama,
                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(place.lokasi,
                      style: const TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      )
      .toList(),
    ),
    );
  }
}