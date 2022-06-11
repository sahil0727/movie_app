import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/screens/details/details_screen.dart';

import '../../../constants.dart';
import '../../../models/movie.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;
  const MovieCard({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.2),
      child: GestureDetector(
        onTap: () => Future.delayed(
            const Duration(microseconds: 1200),
            () => Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => DetailsScreen(movie: movie),
                  ),
                )),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(movie.poster),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: kDefaultPadding * 0.5),
              child: Text(
                movie.title,
                style: GoogleFonts.adamina(
                  color: Colors.black45,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SvgPicture.asset(
                  'assets/icons/star_fill.svg',
                  height: 20,
                ),
                const SizedBox(width: 10),
                Text(
                  movie.rating.toString(),
                  style: GoogleFonts.acme(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
