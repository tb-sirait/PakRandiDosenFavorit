import 'package:flutter/material.dart';
import 'package:pakrandidosenfavorit/opsi_homepage/opsi_berita.dart';
import 'package:pakrandidosenfavorit/opsi_homepage/opsi_edukasi.dart';
import 'package:pakrandidosenfavorit/profil/profil.dart';

import 'opsi_homepage/opsi.dart';

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
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile())
              );
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
              Section(
                title: 'Dokumen Publik',
                items: [
                  ItemCard(title: 'KTP', imagePath: 'assets/ktp.png'),
                  ItemCard(title: 'SIM', imagePath: 'assets/sim.png'),
                ],
                navigateTo: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondPage()),
                  );
                },
              ),
              SizedBox(height: 20),
              Section(
                title: 'Edukasi',
                items: [
                  ItemCard(
                      title: 'Cara Praktis Mengganti Kartu Keluarga yang Rusak atau Hilang',
                      imagePath: 'assets/berita.png'),
                  ItemCard(
                      title: 'Mengurus Panduan Persyaratan Dokumen Keperluan',
                      imagePath: 'assets/berita.png'),
                  ItemCard(
                      title: 'ropai mukanya kayak anjeng',
                      imagePath: 'assets/berita.png'),
                ],
                navigateTo: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OpsiEdukasi()),
                  );
                },
              ),
              SizedBox(height: 18),
              Section(
                title: 'Berita',
                items: [
                  ItemCard(
                      title: 'WNA asal Korea Kesulitan Membuat Dokumen Kependudukan',
                      imagePath: 'assets/berita.png'),
                  ItemCard(
                      title: 'Cara Praktis Mengganti Kartu Keluarga yang Rusak atau Hilang',
                      imagePath: 'assets/berita.png'),
                ],
                navigateTo: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OpsiBerita()),
                  );
                },
              ),
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
  final VoidCallback navigateTo;

  Section({required this.title, required this.items, required this.navigateTo});

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
              onPressed: navigateTo,
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
          Container(
            width: 100, // Set width to keep text inside the card
            child: Text(
              title,
              style: TextStyle(
                fontSize: 14,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

void main() => runApp(MaterialApp(home: HomePage()));
