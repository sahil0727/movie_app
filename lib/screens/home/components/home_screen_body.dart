import 'package:flutter/material.dart';
import 'package:movie_app/constants.dart';
import 'category.dart';
import 'generes.dart';
import 'movie_carousel.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: CategoryList(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Generes(),
          ),
          const SizedBox(height: kDefaultPadding),
          const MovieCarousel(),
        ],
      ),
    );
  }
}
