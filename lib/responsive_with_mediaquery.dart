import 'package:flutter/material.dart';

class MediaQueryScreen extends StatelessWidget {
  const MediaQueryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 600;
    final bool isTablet = size.width >= 600 && size.width <= 800;

    return Scaffold(
      body: isMobile
          ? buildMobileLayout(size)
          : isTablet
              ? buildTabletLayout(size)
              : buildDesktopLayout(size),
    );
  }

  Widget buildMobileLayout(Size size) {
    return Row(
      children: [
        Container(
          height: size.height,
          width: size.width * 0.5,
          color: Colors.red,
          child: Center(
            child: Text(
              'Mobile Left (${size.width.toInt()} x ${size.height.toInt()})',
              style: const TextStyle(fontSize: 20),
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: Container(
            height: size.height,
            width: size.width * 0.5,
            color: Colors.yellow,
            child: Center(
              child: Text(
                'Mobile Right (${size.width.toInt()} x ${size.height.toInt()})',
                style: const TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildTabletLayout(Size size) {
    return Row(
      children: [
        Container(
          height: size.height,
          width: size.width * 0.2,
          color: Colors.teal,
          child: Center(
            child: Text(
              'Tablet Left (${size.width.toInt()} x ${size.height.toInt()})',
              style: const TextStyle(fontSize: 20),
            ),
          ),
        ),
        Expanded(
          flex: 8,
          child: Container(
            height: size.height,
            width: size.width * 0.8,
            color: Colors.deepOrange,
            child: Center(
              child: Text(
                'Tablet Right (${size.width.toInt()} x ${size.height.toInt()})',
                style: const TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildDesktopLayout(Size size) {
    return Row(
      children: [
        Container(
          height: size.height,
          width: size.width * 0.3,
          color: Colors.pink,
          child: Center(
            child: Text(
              'Desktop Left (${size.width.toInt()} x ${size.height.toInt()})',
              style: const TextStyle(fontSize: 20),
            ),
          ),
        ),
        Container(
          height: size.height,
          width: size.width * 0.7,
          color: Colors.green,
          child: Center(
            child: Text(
              'Desktop Right (${size.width.toInt()} x ${size.height.toInt()})',
              style: const TextStyle(fontSize: 20),
            ),
          ),
        ),
      ],
    );
  }
}
