import 'package:flutter/material.dart';
import 'package:portfolio_project/src/ui/home/widgets/constants/text_view.dart';
class StatWidget extends StatelessWidget {
   StatWidget({
    super.key,
       this.height,
      required this.color,
      this.textview,
      this.textviewTitle,
  });

   double? height;
  final Color color;
  TextView? textview;
   TextView? textviewTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: height,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FittedBox(
            fit: BoxFit.fitWidth,
            child: textviewTitle,
          ),
          FittedBox(
            fit: BoxFit.fitWidth,
            child: textview,
          ),
        ],
      )
    );
  }
}