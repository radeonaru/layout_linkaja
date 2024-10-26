import 'package:flutter/material.dart';

class Newest extends StatefulWidget {
  const Newest({super.key});

  @override
  _NewestState createState() => _NewestState();
}

class _NewestState extends State<Newest> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  // List of image URLs for the slider

  final List<String> _promoImages = [
    'https://unsplash.it/350/150?image=3',
    'https://unsplash.it/350/150?image=3',
    'https://unsplash.it/350/150?image=3',
    'https://unsplash.it/350/150?image=3',
    'https://unsplash.it/350/150?image=3',
  ];

  // List of titles for each image
  final List<String> _promoTitles = [
    'Isi Saldo Link Aja via Himbara',
    'Promo 2',
    'Promo 3',
    'Promo 4',
    'Promo 5',
  ];

  // List of descriptions for each image
  final List<String> _promoDescriptions = [
    'BNI, Bank Mandiri, BNI, BTN, Admin Rp1.000',
    'Description for promo 2',
    'Description for promo 3',
    'Description for promo 4',
    'Description for promo 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
              left: 14.0, right: 14.0, top: 50.0), // Added top margin of 20
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Info Terbaru',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        // Slider section with a fixed height
        SizedBox(
          height: 250, // Adjust height to accommodate text below the image
          child: PageView.builder(
            controller: _pageController,
            itemCount: _promoImages.length,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Align content to the start
                children: [
                  Container(
                    margin: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: NetworkImage(_promoImages[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                    height: 150, // Set fixed height for images
                  ),
                  const SizedBox(
                      height: 4), // Reduce space between image and title
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      _promoTitles[index],
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const SizedBox(
                      height: 2), // Reduce space between title and description
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      _promoDescriptions[index],
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.grey, // Use grey color for description
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}