import 'package:flutter/material.dart';

class OpsiEdukasi extends StatelessWidget {
  const OpsiEdukasi({Key? key}) : super(key: key);

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
        title: Text('Edukasi'),
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
              'Most Popular Edukasi',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          _buildEdukasi(
            image: 'assets/berita.png',
            title: 'Edukasi 1',
            date: '26 January 2022',
            content:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
          ),
          _buildEdukasi(
            image: 'assets/berita.png',
            title: 'Edukasi 2',
            date: '26 January 2022',
            content:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
          ),
          _buildEdukasi(
            image: 'assets/berita.png',
            title: 'Edukasi 3',
            date: '26 January 2022',
            content:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
          ),
          _buildEdukasi(
            image: 'assets/berita.png',
            title: 'Edukasi 4',
            date: '26 January 2022',
            content:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
          ),
          _buildEdukasi(
            image: 'assets/berita.png',
            title: 'Edukasi 1',
            date: '26 January 2022',
            content:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
          ),
        ],
      ),
    );
  }

  Widget _buildEdukasi({
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
