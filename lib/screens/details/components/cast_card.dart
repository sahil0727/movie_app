import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';

class CastCard extends StatelessWidget {
  final Map cast;
  const CastCard({
    Key? key,
    required this.cast,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Image.asset(
              cast['image'],
            ),
          ),
          Text(
            '${cast['originalName']}',
            textAlign: TextAlign.center,
            maxLines: 2,
            style: GoogleFonts.poly(
              fontSize: 13,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            cast['movieName'],
            maxLines: 1,
            textAlign: TextAlign.center,
            style: GoogleFonts.nunito(
              color: kTextColor,
            ),
          )
        ],
      ),
    );
  }
}
