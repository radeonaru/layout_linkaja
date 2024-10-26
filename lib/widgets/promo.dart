import 'package:flutter/material.dart';

class Promo extends StatefulWidget {
  const Promo({super.key});

  @override
  _PromoState createState() => _PromoState();
}

class _PromoState extends State<Promo> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  // List of image URLs for the slider
  final List<String> _promoImages = [
    'https://unsplash.it/350/150?image=4',
    'https://unsplash.it/350/150?image=4',
    'https://unsplash.it/350/150?image=4',
    'https://unsplash.it/350/150?image=4',
    'https://unsplash.it/350/150?image=4',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          child: PageView.builder(
            controller: _pageController,
            itemCount: _promoImages.length,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: NetworkImage(_promoImages[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: List.generate(
              _promoImages.length,
              (index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentPage == index ? Color.fromARGB(255, 216, 23, 23) : Colors.grey,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}