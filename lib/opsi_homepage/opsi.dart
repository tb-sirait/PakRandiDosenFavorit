import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/user.png'), // Ganti dengan path gambar user Anda
            ),
            SizedBox(width: 10),
            Text('User'),
            Spacer(),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                // Action untuk icon settings
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dokumen Publik',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  ItemCard(
                    title: 'KTP',
                    imagePath: 'assets/ktp.png',
                  ),
                  ItemCard(
                    title: 'SIM',
                    imagePath: 'assets/sim.png',
                  ),
                  ItemCard(
                    title: 'Pasport',
                    imagePath: 'assets/pasport.png',
                  ),
                  ItemCard(
                    title: 'Kartu Keluarga',
                    imagePath: 'assets/kartu_keluarga.png',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final String title;
  final String imagePath;

  ItemCard({required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagePath, width: 80, height: 80),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}