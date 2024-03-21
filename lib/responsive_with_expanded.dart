import 'package:flutter/material.dart';

class ExpandedScreen extends StatelessWidget {
  const ExpandedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 600;
    final bool isTablet = size.width >= 600 && size.width <= 800;

    return Scaffold(
      body: isMobile
          ? buildMobileLayout()
          : isTablet
              ? buildTabletLayout()
              : buildDesktopLayout(),
    );
  }

  Widget buildMobileLayout() {
    return Row(
      children: [
        Expanded(
          flex: 5,
          child: Container(
            color: Colors.red,
            child: const Center(
              child: Text(
                'Mobile Left',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: Container(
            color: Colors.yellow,
            child: const Center(
              child: Text(
                'Mobile Right',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildTabletLayout() {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.white,
            child: const Center(
              child: Text(
                'Tablet Left',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 8,
          child: Container(
            color: Colors.green,
            child: const Center(
              child: Text(
                'Tablet Right',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildDesktopLayout() {
    return Row(
      children: [
        Expanded(
          flex: 5,
          child: Container(
            color: Colors.pink,
            child: const Center(
              child: Text(
                'Desktop Left',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: Container(
            color: Colors.deepOrange,
            child: const Center(
              child: Text(
                'Desktop Right',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
