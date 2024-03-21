import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice/reponsive_practice/responsive_with_expanded.dart';
import 'package:practice/utils/textstyles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsive Design',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSwatch(
        //   primarySwatch: Colors.white, // Use primary swatch for color scheme
        // ),
        textTheme: GoogleFonts.latoTextTheme().copyWith(
          displaySmall: mySmallTextStyle,
          displayMedium: myMediumTextStyle,
          displayLarge:
              myLargeTextStyle, // Use MyTextStyles as the default text style
        ),
        visualDensity:
            VisualDensity.adaptivePlatformDensity, // Improve visual density
      ),
      home: const HomeScreen(),
    );
  }
}
