
import 'package:beauty_skincare/modules/on_bording/on_bording_views.dart';
import 'package:beauty_skincare/utils/colors_app/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {


  const MyApp({super.key});





  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'beauty_skincare',
      theme: ThemeData(
        scaffoldBackgroundColor: AppBackgroundColor,
        appBarTheme: AppBarTheme(
          elevation: 0.0,
          color: AppBackgroundColor,
          titleTextStyle: TextStyle(color: CText,fontSize: 20,fontWeight: FontWeight.bold),
        ),
        primarySwatch: Colors.blue,
      ),
      home: OnBordingScreens(),
      debugShowCheckedModeBanner: false,
    );
  }
}


