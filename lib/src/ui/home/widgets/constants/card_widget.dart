import 'package:flutter/material.dart';
import '../../../../core/colors.dart';

class CardWidget extends StatelessWidget {
   CardWidget({
    super.key,
     this.height,
    required this.child,
  });
   double? height;
  final Widget child;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
      width: double.maxFinite,
      height: height,
      decoration: const BoxDecoration(
        color: AppColors.lightBlack,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: child,
    );
  }
}