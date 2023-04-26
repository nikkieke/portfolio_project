import 'package:flutter/material.dart';

import '../../../core/colors.dart';
import 'constants/card_widget.dart';
import 'constants/height_space_widget.dart';
import 'constants/stat_row_widget.dart';
import 'constants/text_view.dart';
import 'constants/width_space_widget.dart';

class TabView extends StatelessWidget {
  const TabView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        //color: Colors.green,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
            children: [
              Container(
                //color: Colors.blue,
                height: 300,
                child: Column(
                  children: [
                    const CardWidget(
                        height: 60,
                        child: Row()
                    ),
                    const HeightSpaceWidget(),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 220,
                            decoration: const BoxDecoration(
                              color: AppColors.purple,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(20)),
                            ),
                          ),
                        ),
                        WidthSpaceWidget(),
                        Expanded(
                          child: Container(
                            height: 220,
                            // decoration: const BoxDecoration(
                            //     color: AppColors.lightPink
                            // ),
                            child: const Column(
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
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const HeightSpaceWidget(),
              Container(
                height: 200,
                //color: Colors.red,
                child: Column(
                  children: [
                    CardWidget(
                      height: 100,
                      child: TextView(text: '',),
                    ),
                    HeightSpaceWidget(),
                    StatRowWidget(height: 80,),
                  ],
                ),
              ),
              Container(
                //color: Colors.indigo,
                height: 150,
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width / 1.8,
                      height: 120,
                      //color: Colors.green,
                      child: CardWidget(height:130, child: Column(),),
                    ),
                    const WidthSpaceWidget(),
                    Expanded(
                      child: Container(
                        height: 120,
                        //color: Colors.indigo,
                        child: CardWidget(height: 130, child: Column(),),
                      ),
                    )
                  ],
                ),
              ),
            ]
        ),
      ),
    );
  }
}