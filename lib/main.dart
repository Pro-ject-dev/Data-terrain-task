import 'package:dataterrain_task/constants/colors.dart';
import 'package:dataterrain_task/ui/HomeScreen/Home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primarycolor,
        scaffoldBackgroundColor: scaffoldbgcolor,
        appBarTheme: AppBarTheme(
          backgroundColor: appbarbgcolor,
          elevation: 0,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: bottomnavbarbgcolor ,
          selectedItemColor: selectednavationbarcolor,
          unselectedItemColor: unselectednavationbarcolor,
        ),
     fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
      ),
      home: ResponsiveDashboard(),
    );
  }
}

