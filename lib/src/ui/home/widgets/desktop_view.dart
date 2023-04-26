import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core/colors.dart';
import '../../../data/user_service.dart';
import '../../../model/user_details_model.dart';
import 'constants/card_widget.dart';
import 'constants/height_space_widget.dart';
import 'constants/stat_row_widget.dart';
import 'constants/text_view.dart';
import 'constants/width_space_widget.dart';

class DesktopView extends StatefulWidget {
  const DesktopView({Key? key}) : super(key: key);

  @override
  State<DesktopView> createState() => _DesktopViewState();
}

class _DesktopViewState extends State<DesktopView> {
  late User user;
  bool isLoading = false;

  @override
  void initState() {
    getUser();
    // TODO: implement initState
    super.initState();
  }

  getUser()async{
    setState(() {
      isLoading= true;
    });
    user = await UserService.readJson();
    setState(() {
      isLoading= false;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: isLoading?
            const Center(child: CircularProgressIndicator()):
        Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: Container(
                      height: 400,
                      child:  Column(
                        children: [
                          CardWidget(
                            height: 200,
                            child: TextView(text: "${user.intro}",size: 45,fontWeight: FontWeight.w700,),
                          ),
                          const HeightSpaceWidget(),
                          const StatRowWidget(height: 180,)
                        ],
                      ),
                    )
                ),
                const WidthSpaceWidget(),
                Expanded(
                  child: Container(
                    //color: Colors.blue,
                    height: 400,
                    child: Column(
                      children: [
                        CardWidget(
                            height: 60,
                            child: Row()
                        ),
                        const HeightSpaceWidget(),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 320,
                                decoration: const BoxDecoration(
                                  color: AppColors.purple,
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(20)),
                                ),
                              ),
                            ),
                            const WidthSpaceWidget(),
                            Expanded(
                              child: Container(
                                height: 320,
                                // decoration: const BoxDecoration(
                                //     color: AppColors.lightPink
                                // ),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween,
                                  children: [
                                    CardWidget(height: 70, child: Row()),
                                    HeightSpaceWidget(),
                                    Expanded(
                                        flex: 2,
                                        child: CardWidget(
                                            height: 50, child: Row())),
                                    HeightSpaceWidget(),
                                    CardWidget(height: 70, child: Row()),
                                  ],
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),)
              ],
            ),
            const HeightSpaceWidget(),
            Container(
              //color: Colors.indigo,
              child: Row(
                children: [

                  Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width / 1.8,
                    height: 230,
                    //color: Colors.green,
                    child: CardWidget(height: 230, child: Column(),),
                  ),
                  const WidthSpaceWidget(),
                  Expanded(
                    child: Container(
                      height: 230,
                      //color: Colors.indigo,
                      child: CardWidget(height: 230, child: Column(),),
                    ),
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}

