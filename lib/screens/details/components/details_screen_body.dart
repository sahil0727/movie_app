import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/screens/details/components/title_duration_and_favbtn.dart';
import 'backdrop_and_rating.dart';
import 'cast_and_crew.dart';
import 'genres.dart';

class DetailsScreenBody extends StatelessWidget {
  final Movie movie;
  const DetailsScreenBody({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // it will provide total height and width
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          BackdropAndRating(movie: movie),
          const SizedBox(height: kDefaultPadding * 0.5),
          TitleDurationAndFavBtn(movie: movie),
          Genres(movie: movie),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding,
              vertical: kDefaultPadding * 0.5,
            ),
            child: Text(
              'Plot Summary',
              style: GoogleFonts.nunito(
                color: Colors.black.withOpacity(0.9),
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding,
              vertical: kDefaultPadding * 0.5,
            ),
            child: Text(
              movie.plot,
              textAlign: TextAlign.justify,
              style: GoogleFonts.nunito(
                color: const Color(0xff737599),
                fontSize: 15,
              ),
            ),
          ),
          CastAndCrew(casts: movie.cast),
        ],
      ),
    );
  }
}
