import 'package:flutter/material.dart';

import '../../../../core/colors.dart';

class ProfileImgWidget extends StatelessWidget {
   ProfileImgWidget({
    super.key,
    this.height,
  });

   double? height;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: height,
        decoration: const BoxDecoration(
            color: AppColors.purple,
            borderRadius: BorderRadius.all(
                Radius.circular(20)),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/male_portrait.png"))
        ),
      ),
    );
  }
}