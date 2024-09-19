//import 'package:flutter/material.dart';

class TourismPlace {
  String nama;
  String lokasi;
  String deskripsi;
  String hariBuka;
  String jamBuka;
  String hargaTiket;
  String imageAsset;
  bool like;

  TourismPlace({
    required this.nama,
    required this.lokasi,
    required this.deskripsi,
    required this.hariBuka,
    required this.jamBuka,
    required this.hargaTiket,
    required this.imageAsset,
    required this.like,
  });
}

var tourismPlaceList = [
  TourismPlace(
    nama: 'Ginza',
    lokasi: 'Tokyo',
    deskripsi:
        'Ginza adalah salah satu distrik paling terkenal di Tokyo, Jepang, yang dikenal sebagai pusat perbelanjaan mewah, hiburan, dan budaya. Terletak di wilayah Chūō, Ginza merupakan kawasan yang penuh dengan gedung-gedung tinggi, butik-butik mewah, restoran berbintang Michelin, serta galeri seni yang eksklusif. Ginza sering dianggap sebagai simbol kemewahan dan gaya hidup elit di Tokyo',
    hariBuka: 'Open Everyday',
    jamBuka: '09:00 - 20:00',
    hargaTiket: 'Free',
    imageAsset: 'assets/image/Ginza-Tokyo.jpg',
    like: false,
  ),
  TourismPlace(
    nama: 'IFC Mall',
    lokasi: 'Hongkong',
    deskripsi:
        'IFC Mall (International Finance Centre Mall) di Hong Kong adalah salah satu pusat perbelanjaan paling terkenal dan mewah di kota ini. Terletak di Central, jantung kawasan bisnis Hong Kong, IFC Mall adalah bagian dari kompleks International Finance Centre yang terdiri dari dua menara pencakar langit (IFC One dan IFC Two), Four Seasons Hotel, dan pusat perbelanjaan itu sendiri.',
    hariBuka: 'Open Tuesday - Saturday',
    jamBuka: '09:00 - 14:30',
    hargaTiket: 'Free',
    imageAsset: 'assets/image/IFC-Mall-Hongkong.jpg',
    like: false,
  ),
  TourismPlace(
    nama: 'Galleria Department',
    lokasi: 'Seoul',
    deskripsi:
        'Galleria Department Store di Seoul adalah salah satu pusat perbelanjaan paling bergengsi di Korea Selatan. Terletak di distrik Apgujeong, Gangnam, yang terkenal sebagai salah satu kawasan paling elit di Seoul, Galleria terkenal dengan arsitektur modern, koleksi brand mewah, dan pengalaman berbelanja yang mewah.',
    hariBuka: 'Open Everyday',
    jamBuka: '08:00 - 22:00',
    hargaTiket: 'Free',
    imageAsset: 'assets/image/Galleria-Department-Store-Seoul.jpg',
    like: false,
  ),
  TourismPlace(
    nama: 'Printemps',
    lokasi: 'Paris',
    deskripsi:
        'Printemps adalah salah satu department store paling ikonik di Paris, terkenal dengan arsitektur megah dan pengalaman berbelanja mewahnya. Didirikan pada tahun 1865 oleh Jules Jaluzot, Printemps awalnya fokus pada fesyen dan inovasi. Nama "Printemps," yang berarti "musim semi" dalam bahasa Prancis, mencerminkan konsep pembaruan dan mode terbaru yang menjadi fokus utama toko ini sejak awal.',
    hariBuka: 'Open Everyday',
    jamBuka: '06:00 - 17:00',
    hargaTiket: 'Rp 3000',
    imageAsset: 'assets/image/Printemps-Paris.jpg',
    like: false,
  ),
  TourismPlace(
    nama: 'Destiny USA',
    lokasi: 'New York',
    deskripsi:
        'Destiny USA adalah pusat perbelanjaan dan hiburan yang sangat besar yang terletak di Syracuse, New York. Menjadi salah satu mal terbesar di Amerika Serikat berdasarkan luas lantai, Destiny USA mencakup lebih dari 2,4 juta kaki persegi dan enam lantai yang penuh dengan berbagai toko ritel, restoran, dan atraksi hiburan. Mal ini dibuka pada tahun 1990 dengan nama Carousel Center dan kemudian mengalami beberapa kali ekspansi besar hingga berkembang menjadi Destiny USA pada tahun 2012.',
    hariBuka: 'Open Everyday',
    jamBuka: '20:00 - 02:00',
    hargaTiket: 'Free',
    imageAsset: 'assets/image/Destiny-USA-NewYork.jpeg',
    like: false,
  ),
  TourismPlace(
    nama: 'Dubai Mall',
    lokasi: 'Dubai',
    deskripsi:
        'Dubai Mall adalah salah satu pusat perbelanjaan terbesar dan paling ikonik di dunia, yang terletak di jantung kota Dubai, Uni Emirat Arab. Diresmikan pada November 2008, Dubai Mall adalah bagian dari kompleks raksasa yang mencakup Burj Khalifa, gedung tertinggi di dunia. Dengan luas total sekitar 1,1 juta meter persegi, Dubai Mall setara dengan lebih dari 200 lapangan sepak bola, menjadikannya pusat perbelanjaan terbesar di dunia berdasarkan total area.',
    hariBuka: 'Open Saturday - Thursday',
    jamBuka: '09:00 - 15:30',
    hargaTiket: 'Rp 3000',
    imageAsset: 'assets/image/Dubai-Mall-Dubai.webp',
    like: false
  ),
  TourismPlace(
    nama: 'Westfield',
    lokasi: 'London',
    deskripsi:
        'Westfield London adalah salah satu pusat perbelanjaan terbesar dan paling terkenal di London, yang terletak di daerah White City, bagian barat kota. Westfield ini pertama kali dibuka pada tanggal 30 Oktober 2008 dan segera menjadi destinasi utama untuk belanja, hiburan, dan bersantap bagi penduduk lokal serta wisatawan.',
    hariBuka: 'Open Saturday - Thursday',
    jamBuka: '09:00 - 17:30',
    hargaTiket: 'Rp 3000',
    imageAsset: 'assets/image/Westfield-London.jpg',
    like: false,
  ),
  TourismPlace(
    nama: 'Citadel Outlets',
    lokasi: 'Los Angeles',
    deskripsi:
        'Citadel Outlets di Los Angeles adalah sebuah pusat perbelanjaan yang menawarkan pengalaman berbelanja yang unik dan menyenangkan. Terletak di lokasi strategis, hanya beberapa menit dari pusat kota Los Angeles dan Bandara Internasional LAX, Citadel Outlets adalah destinasi populer bagi para pemburu diskon dan pecinta mode.',
    hariBuka: 'Open Saturday - Thursday',
    jamBuka: '09:00 - 20:00',
    hargaTiket: 'Rp 3000',
    imageAsset: 'assets/image/Citadel-Outlets-LosAngeles.jpg',
    like: false,
  ),
];
