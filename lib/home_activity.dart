import 'package:flutter/material.dart';
import 'package:pakrandidosenfavorit/opsi_berita.dart';
import 'package:pakrandidosenfavorit/opsi_edukasi.dart';

import 'opsi.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NEGERIKU'),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              // Action untuk icon user
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Sederhana, Cepat, Aman\nDokumen Publik dalam Genggaman Anda!',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Section(title: 'Dokumen Publik', items: [
                ItemCard(title: 'KTP', imagePath: 'assets/ktp.png'),
                ItemCard(title: 'SIM', imagePath: 'assets/sim.png'),
              ]),
              SizedBox(height: 20),
              Section(title: 'Edukasi', items: [
                ItemCard(
                    title: 'Cara Praktis Mengganti Kartu Keluarga yang Rusak atau Hilang',
                    imagePath: 'assets/berita.png'),
                ItemCard(
                    title: 'Mengurus Panduan Persyaratan Dokumen Keperluan',
                    imagePath: 'assets/berita.png'),
              ]),
              SizedBox(height: 18),
              Section(title: 'Berita', items: [
                ItemCard(
                    title: 'WNA asal Korea Kesulitan Membuat Dokumen Kependudukan',
                    imagePath: 'assets/berita.png'),
                ItemCard(
                    title: 'Cara Praktis Mengganti Kartu Keluarga yang Rusak atau Hilang',
                    imagePath: 'assets/berita.png'),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}

class Section extends StatelessWidget {
  final String title;
  final List<ItemCard> items;

  Section({required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OpsiEdukasi()),
                );
              },
              child: Text('Lihat Semua'),
            ),
          ],
        ),
        SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: items,
          ),
        ),
      ],
    );
  }
}

class ItemCard extends StatelessWidget {
  final String title;
  final String imagePath;

  ItemCard({required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image.asset(imagePath, width: 100, height: 100),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
