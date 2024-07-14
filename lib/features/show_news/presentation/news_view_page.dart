import 'package:flutter/material.dart';
import 'package:news_app/core/constants/palette.dart';

class NewsViewPage extends StatelessWidget {
  const NewsViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.background,
      appBar: AppBar(
        backgroundColor: Palette.background,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Palette.deepBlue,
            size: 20,
          ),
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'News Title',
              style: TextStyle(
                color: Palette.deepBlue,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Container(
              height: 300,
              color: Palette.lightGrey,
              child: Image.network(
                "https://sm.ign.com/t/ign_br/screenshot/default/imagem-2024-05-08-180800116_wtsk.1920.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
