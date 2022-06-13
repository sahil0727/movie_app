import 'package:flutter/material.dart';

import '../../../components/generes_card.dart';
import '../../../constants.dart';
import '../../../models/movie.dart';

class Genres extends StatelessWidget {
  const Genres({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: kDefaultPadding * 0.5,
        horizontal: kDefaultPadding,
      ),
      child: SizedBox(
        height: 35,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemCount: movie.generation.length,
            itemBuilder: (context, index) {
              return GeneresCard(geners: movie.generation[index]);
            }),
      ),
    );
  }
}
