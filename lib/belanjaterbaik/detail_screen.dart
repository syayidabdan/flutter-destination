// ignore_for_file: unnecessary_import, avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_flutter_baru/model/tourism_place.dart';

class DetailScreen extends StatelessWidget {
  final TourismPlace place;
  const DetailScreen({required this.place, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: LayoutBuilder(builder: (context, BoxConstraints contraints){
              if (contraints.maxWidth  < 700) {
                return DetailMobileScreen(place: place);
              } else{
                return DetailWebScreen(place: place);
              }
            },
          ),
        ),
      ),
    );
  }
}

class DetailMobileScreen extends StatelessWidget {
  const DetailMobileScreen({
    super.key,
    required this.place,
  });

  final TourismPlace place;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(children: [
          Image.asset(place.imageAsset),
          Positioned(
            left: 20,
            top: 20,
            child:
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 40,
              width: 40,
              padding: const EdgeInsets.all(2),
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle
              ),
              child: const Icon(Icons.arrow_back),
            ),
          ), 
          ),
        ]),
        Container(
          alignment: Alignment.center,
          padding:const EdgeInsets.symmetric(vertical: 20),
          child: Text(place.nama,
          style: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const Icon(Icons.date_range),
                  Text(place.hariBuka),
                ],
              ),
              Column(
                children: [
                  const Icon(Icons.access_time),
                  Text(place.jamBuka),
                ],
              ),
              Column(
                children: [
                  const Icon(Icons.monetization_on_outlined),
                  Text(place.hargaTiket),
                ],
              ),
          ],),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          child: Text(place.deskripsi,
          textAlign: TextAlign.center,),
        ),
        const SizedBox(
          height: 250,
        ),
      ],
    );
  }
}


class DetailWebScreen extends StatefulWidget {
  final TourismPlace place;

  DetailWebScreen({required this.place,super.key});

  @override
  State<DetailWebScreen> createState() => _DetailWebScreenState();
}

class _DetailWebScreenState extends State<DetailWebScreen> {
  final _scrollbarController = ScrollController();

  @override
void dispose(){
  _scrollbarController.dispose();
  super.dispose();
}

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 64, vertical: 16),
      child: Center(
        child: SizedBox(
          width: 1200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(children: [
          Positioned(
            child:
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 40,
              width: 40,
              padding: const EdgeInsets.all(2),
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle
              ),
              child: const Icon(Icons.arrow_back),
            ),
          ), 
          ),
        ]),
              const Text("Destinasi Belanja Terbaik di Dunia", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(widget.place.imageAsset),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Scrollbar(
                        controller: _scrollbarController,
                        child: const SizedBox(
                          height: 150,
                          ),
                        ),
                    ],
                  ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(child: Card(
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(widget.place.nama, style: const TextStyle(
                            fontSize: 30,
                          ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [ const
                                  Icon(Icons.calendar_today),
                                  const SizedBox(
                                    height: 8),
                                  Text(widget.place.hariBuka),
                                ],
                              ),
                              IconButton(
                                onPressed: () => setState(() {
                                  widget.place.like = !widget.place.like;
                                }),
                                icon: Icon(
                                  widget.place.like == true ?Icons.favorite : Icons.favorite_border,
                                  color: Colors.pinkAccent,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                              children: [ const
                                Icon(Icons.access_time),
                                const SizedBox(
                                  height: 8),
                                Text(widget.place.jamBuka),
                              ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                              children: [ const
                                Icon(Icons.monetization_on),
                                const SizedBox(
                                  height: 8),
                                Text(widget.place.hargaTiket),
                              ],
                          ),
                          Container(
                            padding: const EdgeInsets.all(16),
                            child: Text(widget.place.deskripsi, textAlign: TextAlign.justify, style: const TextStyle(
                              fontSize: 16
                            ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}