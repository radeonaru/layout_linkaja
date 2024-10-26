import 'package:flutter/material.dart';

import 'package:layout_linkaja/widgets/balance.dart';
import 'package:layout_linkaja/widgets/best_deals.dart';
import 'package:layout_linkaja/widgets/header.dart';
import 'package:layout_linkaja/widgets/main_feature.dart';
import 'package:layout_linkaja/widgets/newest.dart';
import 'package:layout_linkaja/widgets/sub_feature.dart';
import 'package:layout_linkaja/widgets/promo.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
              children: [
                SafeArea(
                  child: Container(
                    color:
                        Colors.white,
                    padding: EdgeInsets.only(left: 14, right: 14),
                    margin: EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Header(), 
                      ],
                    ),
                  ),
                ),
            Balance(),
            MainFeature(),
            SubFeature(),
            Promo(),
            BestDeals(),
            Newest(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Riwayat',
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 216, 23, 23),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Icon(
                Icons.qr_code,
                size: 30.0,
                color: Colors.white,
              ),
            ),
            label: 'Bayar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inbox),
            label: 'Pesan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profil',
          ),
        ],
        currentIndex: 0,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushReplacementNamed(context, '/home');
              break;
            case 1:
              Navigator.pushReplacementNamed(context, '/history');
              break;
            case 2:
              Navigator.pushReplacementNamed(context, '/home');
              break;
            case 3:
              Navigator.pushReplacementNamed(context, '/home');
              break;
            case 4:
              Navigator.pushReplacementNamed(context, '/account');
              break;
          }
        },
        selectedItemColor: Color.fromARGB(255, 216, 23, 23) ,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
