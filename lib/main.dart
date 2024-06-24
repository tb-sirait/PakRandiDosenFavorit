import 'package:flutter/material.dart';
import 'package:pakrandidosenfavorit/berita/dummy_konten_berita.dart';
import 'package:pakrandidosenfavorit/opsi_homepage/opsi_edukasi.dart';
import 'package:pakrandidosenfavorit/profil/profil.dart';
import 'home_activity.dart';
import 'opsi_homepage/opsi.dart';
import 'SplashScreen.dart';
import 'opsi_homepage/opsi_berita.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/home': (context) => HomePage(),
        '/second': (context) => SecondPage(),
        '/news': (context)=> const OpsiBerita(),
        '/education': (context) => const OpsiEdukasi(),
        '/profile': (context) => const Profile(),
        '/news/nama-konten-1': (context)=> const KontenBerita1()
      },
    );
  }
}
