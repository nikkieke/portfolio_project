import 'package:flutter/material.dart';

import '../../../core/colors.dart';
import 'constants/card_widget.dart';
import 'constants/height_space_widget.dart';
import 'constants/stat_widget.dart';
import 'constants/text_view.dart';

class MobileView extends StatelessWidget {
  const MobileView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        //color: Colors.pink,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
            children: [
              Container(
                //color: Colors.blue,
                height: 400,
                child: Column(
                    children: [
                      const CardWidget(
                          height: 60,
                          child: Row()
                      ),
                      const HeightSpaceWidget(),
                      Expanded(
                        child: Container(
                          decoration: const BoxDecoration(
                            color: AppColors.purple,
                            borderRadius: BorderRadius.all(
                                Radius.circular(20)),
                          ),
                        ),
                      ),
                    ]
                ),
              ),
              const HeightSpaceWidget(),
              Container(
                //color: Colors.blue,
                height: 300,
                child:  const Column(
                  mainAxisAlignment: MainAxisAlignment
                      .spaceBetween,
                  children: [
                    Expanded(child: CardWidget(height: 70, child: Row())),
                    HeightSpaceWidget(),
                    Expanded(
                        flex: 2,
                        child: CardWidget(
                            height: 50, child: Row())),
                    HeightSpaceWidget(),
                    Expanded(child: CardWidget(height: 70, child: Row())),

                  ],
                ),
              ),
              const HeightSpaceWidget(),
              Container(
                height: 120,
                //color: Colors.red,
                child:   Column(
                  children: [
                    CardWidget(
                      height: 100,
                      child: TextView(text: '',),
                    ),
                    const HeightSpaceWidget(),

                  ],
                ),
              ),
              StatWidget(height: 100, color: AppColors.cyan,),
              const HeightSpaceWidget(),
              StatWidget(height: 100, color: AppColors.mustardYellow,),
              const HeightSpaceWidget(),
              StatWidget(height: 100, color: AppColors.lightPink,),
              const HeightSpaceWidget(),
              Container(
                height: 120,
                //color: Colors.green,
                child: CardWidget(height:130, child: Column(),),
              ),
              const HeightSpaceWidget(),
              Container(
                height: 150,
                child: CardWidget(height: 130, child: Column(),),
              ),
            ]
        ),
      ),
    );
  }
}