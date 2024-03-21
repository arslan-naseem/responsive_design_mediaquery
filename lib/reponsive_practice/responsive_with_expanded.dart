import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:practice/utils/textstyles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 600;
    final bool isTablet = size.width >= 600 && size.width <= 1000;

    return Scaffold(
      body: isMobile
          ? buildMobileLayout()
          : isTablet
              ? buildTabletLayout()
              : buildDesktopLayout(),
    );
  }

  Widget buildMobileLayout() {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                  icon: const FaIcon(FontAwesomeIcons.bars),
                  onPressed: () {
                    debugPrint("Pressed");
                  }),
              Text('Patagonia', style: myLargeTextStyle),
              IconButton(
                  icon: const FaIcon(FontAwesomeIcons.shop),
                  onPressed: () {
                    debugPrint("Pressed");
                  }),
            ],
          ),
        ),
        Expanded(
          flex: 9,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Log in.',
                  style: myLargeTextStyle,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Email *',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Password *',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Password Help?',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(10, 10),
                      maximumSize: const Size(200, 50),
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    child: const Center(
                        child: Text(
                      'Log in',
                      style: TextStyle(color: Colors.white),
                    ))),
                const SizedBox(
                  height: 10,
                ),
                const Text("Don't have an account? "),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Create One Now",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget buildTabletLayout() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.blue.withOpacity(1),
            child: Column(
              children: [
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        icon: const FaIcon(
                          FontAwesomeIcons.bars,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          debugPrint("Pressed");
                        }),
                    IconButton(
                        icon: const FaIcon(
                          FontAwesomeIcons.magnifyingGlass,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          debugPrint("Pressed");
                        }),
                    IconButton(
                        icon: const FaIcon(
                          FontAwesomeIcons.user,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          debugPrint("Pressed");
                        }),
                    IconButton(
                        icon: const FaIcon(
                          FontAwesomeIcons.heart,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          debugPrint("Pressed");
                        }),
                    IconButton(
                        icon: const FaIcon(
                          FontAwesomeIcons.shop,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          debugPrint("Pressed");
                        }),
                  ],
                )),
                const Expanded(child: Text(''))
              ],
            ),
          ),
        ),
        Expanded(
          flex: 9,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Log in.',
                  style: myLargeTextStyle,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Email *',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Password *',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Password Help?',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(10, 10),
                      maximumSize: const Size(200, 50),
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    child: const Center(
                        child: Text(
                      'Log in',
                      style: TextStyle(color: Colors.white),
                    ))),
                const SizedBox(
                  height: 10,
                ),
                const Text("Don't have an account? "),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Create One Now",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget buildDesktopLayout() {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Material(
                elevation: 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Shop',
                          style: mySmallTextStyle,
                        ),
                        Text(
                          'Activism',
                          style: mySmallTextStyle,
                        ),
                        Text(
                          'Sports',
                          style: mySmallTextStyle,
                        ),
                        Text(
                          'Stories',
                          style: mySmallTextStyle,
                        ),
                      ],
                    )),
                    Expanded(
                        child: Center(
                      child: Text('Patagonia', style: myLargeTextStyle),
                    )),
                    Expanded(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                            icon:
                                const FaIcon(FontAwesomeIcons.magnifyingGlass),
                            onPressed: () {
                              debugPrint("Pressed");
                            }),
                        IconButton(
                            icon: const FaIcon(FontAwesomeIcons.user),
                            onPressed: () {
                              debugPrint("Pressed");
                            }),
                        IconButton(
                            icon: const FaIcon(FontAwesomeIcons.heart),
                            onPressed: () {
                              debugPrint("Pressed");
                            }),
                        IconButton(
                            icon: const FaIcon(FontAwesomeIcons.shop),
                            onPressed: () {
                              debugPrint("Pressed");
                            }),
                        IconButton(
                            icon: const FaIcon(FontAwesomeIcons.bars),
                            onPressed: () {
                              debugPrint("Pressed");
                            }),
                      ],
                    )),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 9,
              child: Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 150, vertical: 100),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Log in.',
                          style: myLargeTextStyle,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Email *',
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(width: 1.0),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(width: 2.0),
                            ),
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Password *',
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(width: 1.0),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(width: 2.0),
                            ),
                          ),
                        ),
                        const Text(
                          'Password Help?',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(10, 10),
                              maximumSize: const Size(200, 50),
                              backgroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                            child: const Center(
                                child: Text(
                              'Log in',
                              style: TextStyle(color: Colors.white),
                            ))),
                        const Text("Don't have an account? "),
                        const Text(
                          "Create One Now",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  )),
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 350,
                        width: 350,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 50),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Looking for your order?',
                                style: myLargeTextStyleWhite,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                  style: mySmallTextStyleWhite,
                                  'See you order even if you are not a \nregisterd user. Enter the order number \nand your last name'),
                              const SizedBox(
                                height: 80,
                              ),
                              const RoundButton(title: 'Find Your Order'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class RoundButton extends StatelessWidget {
  final String title;
  const RoundButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: Colors.white,
          width: 2, // Adjust the width of the border as needed
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: mySmallTextStyleWhite,
        ),
      ),
    );
  }
}
