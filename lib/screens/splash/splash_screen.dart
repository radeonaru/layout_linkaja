import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Timer untuk delay splash screen sebelum masuk ke Homepage
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Ubah sesuai tema warna aplikasi
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Gambar Logo
            Image.asset(
              'logo_linkaja.png',
              width: 150, // Ukuran logo
              height: 150,
            ),
            SizedBox(height: 20),
            // Teks atau nama aplikasi (opsional)
          ],
        ),
      ),
    );
  }
}
