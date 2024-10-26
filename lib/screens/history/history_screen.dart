import 'package:flutter/material.dart';
import 'package:layout_linkaja/widgets/history_card.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Jumlah tab
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(110.0),
          child: AppBar(
            title: Padding(
              padding: const EdgeInsets.only(bottom: 1.0),
              child: Text(
                'Riwayat Transaksi',
                style: TextStyle(
                  fontWeight: FontWeight.w600, // Semi-bold
                  fontSize: 18,
                ),
              ),
            ),
            centerTitle: true,
            bottom: TabBar(
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(
                  color:
                      Colors.red, // Warna border merah di bawah tab yang aktif
                  width: 4.0, // Lebar border
                ),
                insets: EdgeInsets.symmetric(
                    horizontal: 128), // Membuat border setengah dari lebar tab
              ),
              labelColor: Colors.black,
              unselectedLabelColor: Colors.black,
              tabs: [
                Tab(
                  child: Text(
                    'Pending',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Tab(
                  child: Text(
                    'Selesai  ',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              color: Color.fromARGB(255, 237, 236, 252),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'logo_linkaja.png', // Path to your image asset
                      height: 150,
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Semua transaksi sudah beres!',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Setiap transaksi yang masih dalam proses akan muncul di sini',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFBDBDBD),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Color.fromARGB(255, 237, 236, 252),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: ListView(
                  children: [
                    TransactionCard(
                      title: 'Biaya Layanan E-statement',
                      date: '16 Okt 2024 11:12',
                      amount: 'Rp 2.000',
                      status: 'Sukses',
                      description: 'Link Aja',
                    ),
                    TransactionCard(
                      title: 'Biaya Layanan E-statement',
                      date: '8 Sep 2024 08:42 WIB',
                      amount: 'Rp 2.000',
                      status: 'Sukses',
                      description: 'Link Aja',
                    ),
                    TransactionCard(
                      title: 'Biaya Layanan E-statement',
                      date: '14 Agu 2024 04:11 WIB',
                      amount: 'Rp 2.000',
                      status: 'Sukses',
                      description: 'Link Aja',
                    ),
                  ],
                ),
              ),
            ),
          ],
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
        currentIndex: 1,
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
      ),
    );
  }
}