import 'package:flutter/material.dart';
import '../../../../core/colors.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.height,
    required this.child,
  });
  final double height;
  final Widget child;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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