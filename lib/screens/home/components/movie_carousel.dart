import 'dart:developer';

import 'package:flutter/material.dart';
import 'dart:math' as math;

import '../../../constants.dart';
import '../../../models/movie.dart';
import 'movie_card.dart';

class MovieCarousel extends StatefulWidget {
  const MovieCarousel({Key? key}) : super(key: key);

  @override
  State<MovieCarousel> createState() => _MovieCarouselState();
}

class _MovieCarouselState extends State<MovieCarousel> {
  PageController _pageController = PageController();
  int initialPage = 1;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      viewportFraction: 0.8,
      initialPage: initialPage,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: AspectRatio(
        aspectRatio: 0.75,
        child: PageView.builder(
            onPageChanged: (val) {
              log("page index : $val");
              setState(() {
                initialPage = val;
              });
            },
            controller: _pageController,
            physics: const BouncingScrollPhysics(),
            itemCount: movies.length,
            itemBuilder: (context, index) {
              return AnimatedBuilder(
                animation: _pageController,
                builder: (context, widget) {
                  double value = 0;
                  if (_pageController.position.hasContentDimensions) {
                    value = index - _pageController.page!.toDouble();
                    // we used 0.038 because 180*0.05 =9
                    // almost we need to rotate our poster 7 degree
                    // we use clamp so that value vary from -1 to  1
                    value = (value * 0.05).clamp(-1, 1);
                    // log('${math.pi * value}');
                  }
                  return AnimatedOpacity(
                    duration: const Duration(milliseconds: 350),
                    opacity: initialPage == index ? 1 : 0.3,
                    child: Transform.rotate(
                      angle: math.pi * value,
                      child: MovieCard(
                        movie: movies.elementAt(index),
                      ),
                    ),
                  );
                },
              );
            }),
      ),
    );
  }
}
