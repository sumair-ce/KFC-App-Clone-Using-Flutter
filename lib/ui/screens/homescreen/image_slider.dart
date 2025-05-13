import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class imageSlider extends StatefulWidget {
  @override
  State<imageSlider> createState() => _imageSliderState();
}

class _imageSliderState extends State<imageSlider> {
  final urlimages = [
    'lib/core/assets/images/dealone.png',
    'lib/core/assets/images/deal2.png',
    'lib/core/assets/images/deal3.png',
    'lib/core/assets/images/deal4.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CarouselSlider.builder(
          itemCount: urlimages.length,
          itemBuilder: (context, index, realIndex) {
            final url = urlimages[index];
            return buildImage(url);
          },
          options: CarouselOptions(
            viewportFraction: 1.0, // Takes the full width of the screen
            enableInfiniteScroll: false,
            autoPlay: true,
            aspectRatio:
                18 / 5, // You can adjust this ratio based on your images
          ),
        ),
      ],
    );
  }

  Widget buildImage(String url) {
    return Container(
      width:
          MediaQuery.of(context).size.width, // Ensures full-width image display
      child: Image.asset(
        url,
        fit: BoxFit
            .cover, // Ensures the image fills the container without distortion
      ),
    );
  }
}
