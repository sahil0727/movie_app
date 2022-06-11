import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../providers/movie_category_provider.dart';

class CategoryList extends StatelessWidget {
  CategoryList({Key? key}) : super(key: key);
  final List<String> categoryList = [
    '  All  ',
    'In Theater',
    'Box Office',
    'Max Viewed',
    'On Demand',
    'Marvel',
    'DCEU',
    'Universal',
    'Coming Soon',
  ];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MovieCategoryProvider>(context);
    return SizedBox(
      height: 30,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categoryList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              provider.getIndex(index: index);
            },
            child: Container(
              margin: const EdgeInsets.only(
                left: 8,
              ),
              padding:
                  const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 6),
              decoration: BoxDecoration(
                color: Colors.black12,
                gradient: const LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xff33697b),
                    Color(0xfffc9885),
                  ],
                ),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  /*
                  color: index ==
                          Provider.of<MovieCategoryProvider>(context,
                                  listen: false)
                              .index
                      ? Colors.black
                      : Colors.black26,
                  */
                  color:
                      index == provider.index ? Colors.black : Colors.black45,
                  width: index == provider.index ? 0.7 : 0.5,
                ),
              ),
              child: Center(
                child: Text(
                  categoryList.elementAt(index),
                  style: GoogleFonts.poly(),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
