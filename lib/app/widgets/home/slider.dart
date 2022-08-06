import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  int activeIndex = 0;
  final urlImages = [
    'assets/mobile/uploads/bus_euro4-homepage-_hino_bus.jpg',
    'assets/mobile/uploads/truck_euro4-homepage-03_hino_ranger_truk.jpg',
    'assets/mobile/uploads/truck_euro4-homepage-hino_profia_truk_r1.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(0, 123, 10, 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CarouselSlider.builder(
                  options: CarouselOptions(
                    height: 200,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (index, reason) =>
                        setState(() => activeIndex = index),
                  ),
                  itemCount: urlImages.length,
                  itemBuilder: (context, index, realIndex) {
                    final urlImage = urlImages[index];
                    return buildImage(urlImage, index);
                  },
                ),
                SizedBox(height: 20),
                buildIndicator(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildImage(String urlImage, int index) => Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        color: Colors.grey,
        child: Image.asset(
          urlImage,
          fit: BoxFit.cover,
        ),
      );

  buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: urlImages.length,
        effect: ExpandingDotsEffect(
          dotHeight: 10,
          dotWidth: 13,
          activeDotColor: Colors.red,
          dotColor: Colors.grey,
        ),
      );
}

// Widget buildCard({required CardItem item,}) =>
//     Container(
//       width: 90,
//       height: 250,
//
//       child: Column(
//
//         children: [
//           Expanded(
//             child: AspectRatio(
//
//               aspectRatio: 16 / 9,
//               child: ClipRRect(
//
//                 borderRadius: BorderRadius.circular(12),
//                 child: Container(
//                   color: Colors.grey[200],
//
//                   child: Image.asset(
//                     item.urlImage,
//                     height: 5,
//                     width: 5,
//                     fit: BoxFit.scaleDown,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           const SizedBox(height: 8),
//           Text(
//               item.title,
//               textAlign: TextAlign.center,
//               style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)
//           ),
//         ],
//       ),
//     );