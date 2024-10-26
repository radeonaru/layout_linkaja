import 'package:flutter/material.dart';

class Balance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 216, 23, 23),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hai, Muhammad Bagus Indrawan',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Card(
                color: Colors.white, // Background putih
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 16, top: 16, bottom: 16, right:50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Saldo Kamu',
                          style: TextStyle(
                              color: const Color.fromARGB(255, 68, 68, 68))),
                      Row(
                        children: [
                          Text('Rp 40,506',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14)),
                          SizedBox(
                            width: 4,
                          ),
                          Icon(
                            Icons.arrow_circle_right,
                            color: Color.fromARGB(255, 216, 23, 23),
                            size: 18,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 2),
              Card(
                color: Colors.white, // Background putih
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 16, top: 16, bottom: 16, right: 40), // Memberikan padding ke dalam card
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Saldo Bonus',
                          style: TextStyle(
                              color: const Color.fromARGB(255, 68, 68, 68))),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.circle,
                              color: Colors.yellow, size: 18),
                          SizedBox(width: 4),
                          Text('0',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14)),
                          SizedBox(
                            width: 4,
                          ),
                          Icon(
                            Icons.arrow_circle_right,
                            color: Color.fromARGB(255, 216, 23, 23),
                            size: 18,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}