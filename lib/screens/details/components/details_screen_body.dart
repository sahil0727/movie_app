import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/models/movie.dart';

class DetailsScreenBody extends StatelessWidget {
  final Movie movie;
  const DetailsScreenBody({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // it will provide total height and width
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Container(
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
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
