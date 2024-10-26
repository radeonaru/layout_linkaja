import 'package:flutter/material.dart';

class SubFeature extends StatelessWidget {
  final List<IconData> icons = [
    Icons.phone_android,
    Icons.flash_on,
    Icons.tv,
    Icons.credit_card,
    Icons.mosque,
    Icons.church,
    Icons.favorite,
    Icons.more_horiz,
  ];

  final List<String> labels = [
    'Pulsa/Data',
    'Listrik',
    'Kabel TV & Internet',
    'Kartu Uang Elektronik',
    'Masjid',
    'Gereja',
    'Infaq',
    'Semua',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        childAspectRatio: 1,
      ),
      itemCount: icons.length,
      itemBuilder: (context, index) {
        return Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icons[index],
                color: Color.fromARGB(255, 216, 23, 23),
              ),
              SizedBox(height: 4),
              Text(
                labels[index],
                style: TextStyle(fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        );
      },
    );
  }
}
