import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class GeneresCard extends StatelessWidget {
  final String geners;
  final bool isBorder;
  const GeneresCard({
    Key? key,
    required this.geners,
    this.isBorder = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(left: 8),
      padding: const EdgeInsets.only(
        left: 7,
        right: 7,
        top: 5,
        bottom: 5,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.withOpacity(0.15),
        border: Border.all(
          color: isBorder ? Colors.black12 : Colors.transparent,
        ),
      ),
      child: Text(
        geners,
        style: GoogleFonts.nunito(
          color: kTextColor.withOpacity(0.8),
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
