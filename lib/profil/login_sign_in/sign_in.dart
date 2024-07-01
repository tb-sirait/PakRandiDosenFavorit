import 'package:flutter/material.dart';
import 'package:pakrandidosenfavorit/profil/login_sign_in/login.dart';

class Daftar extends StatefulWidget {
  @override
  _DaftarState createState() => _DaftarState();
}

class _DaftarState extends State<Daftar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Time and 'r' icon
          Row(
            children: [
              Text('9:41'),
              Icon(Icons.access_time),
            ],
          ),
          // Daftar Sekarang button
          Text("DAFTAR SEKARANG"),
          Text('Silakan daftar untuk melanjutkan aplikasi kami'),
          // Form fields
          Form(
            child: Column(
              children: [
                // Citizen Identification Number field
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Citizen Identification Number',
                  ),
                ),
                // Full Name field
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Full Name',
                  ),
                ),
                // Email field
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                  ),
                ),
              ],
            ),
          ),
          // Sign Up button
          ElevatedButton(
            onPressed: () {},
            child: Text('Sign Up'),
          ),
          // Already have an account? text and Sign in button
          Row(
            children: [
              Text('Already have an account?'),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen())
                  );
                },
                child: Text('Sign in'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}