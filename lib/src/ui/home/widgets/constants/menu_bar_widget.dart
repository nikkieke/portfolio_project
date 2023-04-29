import 'package:flutter/material.dart';
import 'package:portfolio_project/src/ui/home/widgets/constants/text_view.dart';

import '../../../../core/colors.dart';
import 'card_widget.dart';

class TopMenuBar extends StatelessWidget {
  const TopMenuBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CardWidget(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if(MediaQuery.of(context).size.width <= 200)...[
              const Icon(Icons.dehaze,color: AppColors.starkWhite,size: 13,)
            ]else...[
              Row(
                children: [
                  TextView(text: "Bim", size: 15, fontWeight: FontWeight.w600,color: AppColors.lightWhite,),
                  TextView(text: "Graph", size: 15, fontWeight: FontWeight.w600,color: AppColors.starkWhite),
                ],
              ),
              const Icon(Icons.dehaze,color: AppColors.starkWhite,size: 13,)
            ],

          ],
        )
    );
  }
}