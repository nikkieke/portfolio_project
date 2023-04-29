import 'package:flutter/material.dart';
import 'package:portfolio_project/src/ui/home/widgets/constants/text_view.dart';

import '../../../../core/colors.dart';
import '../../../../model/user_details_model.dart';
import 'card_widget.dart';
import 'height_space_widget.dart';

class IntroWidget extends StatelessWidget {
  const IntroWidget({
    super.key,
    required this.user,
  });

  final User user;

  @override
  Widget build(BuildContext context) {
    return CardWidget(
      child: Column(
        children: [
          TextView(text: "${user.intro}",
            size: 45,fontWeight: FontWeight.w700,color: AppColors.starkWhite,),
          const HeightSpaceWidget(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 50,
                width: 150,
                decoration: const BoxDecoration(
                  color: AppColors.purple,
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextView(text: "Hire Me",
                      color: AppColors.starkWhite,size: 18,fontWeight: FontWeight.w600,),
                    Image.asset("assets/icons/hand.png", width: 20,),

                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}