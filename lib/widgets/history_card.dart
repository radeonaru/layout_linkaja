import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  final String title;
  final String date;
  final String amount;
  final String description;
  final String status;

  const TransactionCard({
    required this.title,
    required this.date,
    required this.amount,
    required this.description,
    required this.status,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), // Rounded corners
          ),
          color: Colors.white, // White background
          elevation: 4, // Optional: Add shadow for elevation
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            fontWeight: FontWeight.w600, // Semi bold
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          date,
                          style: TextStyle(
                            color: Colors.grey, // Gray color
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          amount,
                          style: TextStyle(
                            fontWeight: FontWeight.w600, // Semi bold
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              status,
                              style: TextStyle(
                                color: status == 'Gagal'
                                    ? Colors.red
                                    : Colors
                                        .green, // Red for fail, green for done
                                fontWeight: FontWeight.w600, // Semi bold
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(width: 4),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(color: Colors.grey[300]), // Border separator
                SizedBox(height: 8),
                Text(
                  description,
                  style: TextStyle(
                    color: Colors.grey[700], // Light gray for description
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 45,
          right: 2,
          child: Container(
            height: 24,
            width: 4,
            decoration: BoxDecoration(
              color: status == 'Fail' ? Colors.red : Colors.green,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5),
                bottomLeft: Radius.circular(5),
              ),
            ),
          ),
        ),
      ],
    );
  }
}