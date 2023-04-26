import 'package:flutter/material.dart';
import 'package:portfolio_project/src/ui/home/widgets/constants/text_view.dart';
class StatWidget extends StatelessWidget {
  const StatWidget({
    super.key,
    required this.height,
    required this.color
  });

  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child:TextView(text: '',),);
  }
}