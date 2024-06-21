import 'package:flutter/material.dart';
import 'package:pakrandidosenfavorit/opsi_edukasi.dart';
import 'home_activity.dart';
import 'opsi.dart';
import 'SplashScreen.dart';
import 'opsi_berita.dart';
import 'opsi_edukasi.dart';

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
        '/news': (context)=> OpsiBerita(),
        '/education': (context) => OpsiEdukasi(),
      },
    );
  }
}
