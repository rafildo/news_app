import 'package:flutter/material.dart';
import 'package:news_app/core/constants/palette.dart';
import 'package:news_app/features/show_news/presentation/home_page.dart';
import 'package:news_app/features/show_news/presentation/news_view_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          colorScheme: const ColorScheme.light().copyWith(
            secondary: Palette.deepBlue,
          )),
      //home: const HomePage(),
      home: const NewsViewPage(),
    );
  }
}
