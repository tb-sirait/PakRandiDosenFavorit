import 'package:flutter/material.dart';

class OpsiBerita extends StatelessWidget {
  const OpsiBerita({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Berita Terkini'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/user.png'),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Most Popular News',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          _buildBerita(
            image: 'assets/berita.png',
            title: 'Antrian Panjang di Dukcapil',
            date: '26 January 2022',
            content:
            'Terjadi antrian panjang di kantor dukcapil kota dumai hingga terja..',
          ),
          _buildBerita(
            image: 'assets/berita.png',
            title: 'WNA Kesulitan Membuat Dokumen',
            date: '26 January 2022',
            content:
            'Seorang WNA asal Korea Kesulitan Membuat KTP hingga Tidak Memi..',
          ),
          _buildBerita(
            image: 'assets/berita.png',
            title: 'Warga Tidak Memiliki KTP',
            date: '26 January 2022',
            content:
            'Seorang warga asal cidodol tidak memiliki kartu KTP diduga karen..',
          ),
          _buildBerita(
            image: 'assets/berita.png',
            title: 'Judul Berita 4',
            date: '26 January 2022',
            content:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
          ),
          _buildBerita(
            image: 'assets/berita.png',
            title: 'Antrian Panjang di Dukcapil',
            date: '26 January 2022',
            content:
            'Terjadi antrian panjang di kantor dukcapil kota dumai hingga terja..',
          ),
        ],
      ),
    );
  }

  Widget _buildBerita({
    required String image,
    required String title,
    required String date,
    required String content,
  }) {
    return Card(
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                image,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      date,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      content,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
      ),
    );
  }
}