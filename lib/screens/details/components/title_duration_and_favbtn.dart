import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';
import '../../../models/movie.dart';

class TitleDurationAndFavBtn extends StatelessWidget {
  const TitleDurationAndFavBtn({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  movie.title,
                  style: GoogleFonts.actor(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    Text(
                      movie.year.toString(),
                      style: const TextStyle(
                        color: kTextLightColor,
                      ),
                    ),
                    const SizedBox(width: 20),
                    const Text(
                      'PG13',
                      style: TextStyle(
                        color: kTextLightColor,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Text(
                      movie.runTime,
                      style: const TextStyle(
                        color: kTextLightColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: 64,
            height: 64,
            child: TextButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(kSecondaryColor),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              onPressed: () {},
              child: const Icon(
                Icons.favorite,
                size: 28,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
