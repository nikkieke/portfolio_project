import 'package:flutter/material.dart';
import 'package:portfolio_project/src/ui/home/widgets/constants/text_view.dart';
import 'package:portfolio_project/src/ui/home/widgets/constants/width_space_widget.dart';

import '../../../../core/colors.dart';
import 'card_widget.dart';
import 'height_space_widget.dart';

class UIPortfolioWidget extends StatelessWidget {
  const UIPortfolioWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery
          .of(context)
          .size
          .width / 1.8,
      child: CardWidget(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextView(text: "UI Portfolio",size: 25,fontWeight: FontWeight.w700,color: AppColors.starkWhite,),
                TextView(text: "See All",size: 25,fontWeight: FontWeight.w400,color: AppColors.lightWhite,),
              ],
            ),
            const HeightSpaceWidget(),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(image: AssetImage("assets/images/ecommerce_site.jpg"),
                          fit: BoxFit.cover,
                        )
                    ),

                  ),
                ),
                const WidthSpaceWidget(),
                Expanded(
                  child: Container(
                    height: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(image: AssetImage("assets/images/nft_mkplace_site.jpg"),
                          fit: BoxFit.cover,
                        )
                    ),

                  ),
                ),
                const WidthSpaceWidget(),
                Expanded(
                  child: Container(
                    height: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(image: AssetImage("assets/images/document_site.jpg"),
                          fit: BoxFit.cover,
                        )
                    ),

                  ),
                ),


              ],
            )

          ],
        ),),
    );
  }
}