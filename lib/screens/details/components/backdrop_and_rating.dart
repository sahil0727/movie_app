import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';
import '../../../models/movie.dart';

class BackdropAndRating extends StatelessWidget {
  const BackdropAndRating({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.4,
      decoration: const BoxDecoration(
          // color: Colors.black12,
          // i take color for showing reference
          ),
      child: Stack(
        clipBehavior: Clip.none,
        children: <Widget>[
          Container(
            height: size.height * 0.4 - 50,
            decoration: BoxDecoration(
              // color: Colors.white,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
                bottomLeft: Radius.circular(50),
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(movie.backdrop),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              height: size.height * 0.12,
              width: size.width * 0.9,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 5),
                    blurRadius: 50,
                    color: const Color(0xff12153d).withOpacity(0.2),
                  )
                ],
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50),
                  bottomLeft: Radius.circular(50),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/icons/star_fill.svg'),
                      const SizedBox(height: 5),
                      RichText(
                        text: TextSpan(
                          style: const TextStyle(color: Colors.black),
                          children: <InlineSpan>[
                            TextSpan(
                              text: '${movie.rating}/',
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: '10\n',
                              style: GoogleFonts.poppins(
                                color: Colors.black54,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text: '${movie.numOfRating}',
                              style: GoogleFonts.poppins(
                                color: kTextColor,
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // rate this
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SvgPicture.asset('assets/icons/star.svg'),
                      const SizedBox(height: 5),
                      Text(
                        'Rate  This',
                        style: GoogleFonts.poly(
                          fontWeight: FontWeight.w700,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  // Mata Score
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: const Color(0xff51cf65),
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: Text(
                          movie.metaScoreRating.toString(),
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'MetaScore',
                        style: GoogleFonts.poly(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "${movie.criticsReview} critics review",
                        style: GoogleFonts.nunito(
                          color: Colors.black38,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SafeArea(
            child: InkWell(
              onTap: () => Navigator.of(context).pop(),
              child: Container(
                margin: const EdgeInsets.only(left: 20),
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      // offset: Offset(0, 3),
                      color: Colors.grey,
                      blurRadius: 10,
                      spreadRadius: -20,
                    ),
                  ],
                ),
                child: const Center(
                  child: Icon(CupertinoIcons.back),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
