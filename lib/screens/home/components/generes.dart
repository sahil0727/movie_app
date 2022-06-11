import 'package:flutter/material.dart';

import '../../../components/generes_card.dart';

class Generes extends StatelessWidget {
  Generes({Key? key}) : super(key: key);

  final List<String> generes = [
    'Action',
    'Crime',
    'Comedy',
    'Drama',
    'Horror',
    'Animation',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: generes.length,
        itemBuilder: (context, index) => GeneresCard(
          geners: generes.elementAt(index),
          isBorder: true,
        ),
      ),
    );
  }
}
