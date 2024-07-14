import 'package:flutter/material.dart';
import 'package:news_app/core/constants/palette.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        height: 300,
        width: MediaQuery.of(context).size.width - (2 * 16),
        child: Stack(children: [
          Container(
            width: double.infinity,
            height: 260,
            margin: const EdgeInsets.only(
              bottom: 16,
            ),
            color: Palette.lightGrey,
            child: Image.network(
              "https://sm.ign.com/t/ign_br/screenshot/default/imagem-2024-05-08-180800116_wtsk.1920.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 16,
            right: 16,
            bottom: 0,
            child: Container(
              height: 80,
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 2),
                    blurRadius: 4,
                    color: Colors.black12,
                  ),
                ],
              ),
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Center(
                  child: Text(
                    'News Title',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                      color: Palette.deepBlue,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
