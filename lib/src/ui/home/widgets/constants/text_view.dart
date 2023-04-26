import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/colors.dart';

class TextView extends StatelessWidget {
  TextAlign? textAlign;
  FontWeight? fontWeight;
  final String text;
  TextOverflow? overflow;
  double size;
  double? letterSpacing;
  double? wordSpacing;
  int? maxLines;



  TextView({Key? key,this.fontWeight,  required this.text,this.overflow, this.textAlign,
    this.wordSpacing,this.letterSpacing,this.maxLines,
    this.size= 0,  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      textAlign: textAlign,
      style: GoogleFonts.openSans(
        textStyle: TextStyle(
            color: AppColors.starkWhite,
            fontWeight: fontWeight,
            fontSize:size==0? 20 :size,
            overflow: overflow,
            letterSpacing: letterSpacing,
            wordSpacing: wordSpacing,
            decoration: TextDecoration.none

        ),

      )

    );
  }
}

