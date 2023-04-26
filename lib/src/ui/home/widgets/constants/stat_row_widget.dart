import 'package:flutter/material.dart';
import 'package:portfolio_project/src/ui/home/widgets/constants/stat_widget.dart';
import 'package:portfolio_project/src/ui/home/widgets/constants/width_space_widget.dart';

import '../../../../core/colors.dart';
import '../../home_screen.dart';

class StatRowWidget extends StatelessWidget {
  const StatRowWidget({
    super.key,
    required this.height,
  });
  final double height;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment
          .spaceAround,
      children: [
        Expanded(
          child: StatWidget(height: height, color: AppColors.cyan,),
        ),
        const WidthSpaceWidget(),
        Expanded(
          child: StatWidget(height: height, color: AppColors.mustardYellow,),
        ),
        const WidthSpaceWidget(),
        Expanded(
          child: StatWidget(height: height, color: AppColors.lightPink,),
        ),

      ],
    );
  }
}