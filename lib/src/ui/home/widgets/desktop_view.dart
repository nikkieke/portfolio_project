
import 'package:flutter/material.dart';
import '../../../data/user_service.dart';
import '../../../model/user_details_model.dart';
import 'constants/intro_widget.dart';
import 'constants/menu_bar_widget.dart';
import 'constants/height_space_widget.dart';
import 'constants/profile_details_widget.dart';
import 'constants/profile_img_widget.dart';
import 'constants/stat_row_widget.dart';
import 'constants/ui_portfolio_widget.dart';
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                      child:  Column(
                        children: [
                          IntroWidget(user: user),
                          const HeightSpaceWidget(),
                            StatRowWidget(
                             height: 180,
                           )
                        ],
                      ),
                ),
                const WidthSpaceWidget(),
                Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const TopMenuBar(),
                          const HeightSpaceWidget(),
                          Row(
                            children: [
                              ProfileImgWidget(
                                height: 340,
                              ),
                              const WidthSpaceWidget(),
                              Expanded(
                                child: SizedBox(
                                  height: 340,
                                  child: ProfileDetailsWidget(user: user),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                ),
              ],
            ),
            const HeightSpaceWidget(),
              Row(
                children: [
                  const UIPortfolioWidget(),
                  const WidthSpaceWidget(),
                  Expanded(
                      child: AboutWidget(user: user, fontSize: 15, fontSizeTitle: 25,),
                  )
                ],
              ),

          ],
        ),
      ),
    );
  }
}













