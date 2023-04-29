

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class TextView extends StatelessWidget {
  TextAlign? textAlign;
  FontWeight? fontWeight;
  final String text;
  TextOverflow? overflow;
  double size;
  double? letterSpacing;
  double? wordSpacing;
  int? maxLines;
  Color? color;




  TextView({Key? key,this.fontWeight,  required this.text,this.overflow, this.textAlign,
    this.wordSpacing,this.letterSpacing,this.maxLines,this.color,
    this.size= 0,  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      minFontSize: 12,
      maxLines: 9,
      textAlign: textAlign,
      style: GoogleFonts.openSans(
        textStyle: TextStyle(
            color: color,
            fontWeight: fontWeight,
            fontSize:size==0? 20 :size,
            overflow: TextOverflow.ellipsis,
            letterSpacing: letterSpacing,
            wordSpacing: wordSpacing,
            decoration: TextDecoration.none

        ),

      )

    );
  }
}


