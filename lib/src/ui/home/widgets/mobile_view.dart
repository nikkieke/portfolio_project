import 'package:flutter/material.dart';

import '../../../core/colors.dart';
import '../../../data/user_service.dart';
import '../../../model/user_details_model.dart';
import 'constants/card_widget.dart';
import 'constants/height_space_widget.dart';
import 'constants/intro_widget.dart';
import 'constants/menu_bar_widget.dart';
import 'constants/profile_details_widget.dart';
import 'constants/profile_img_widget.dart';
import 'constants/stat_widget.dart';
import 'constants/text_view.dart';


class MobileView extends StatefulWidget {
  const MobileView({Key? key}) : super(key: key);

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
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
        child:isLoading?
        const Center(child: CircularProgressIndicator()):
        Column(
            children: [
              SizedBox(
                height: 470,
                child: Column(
                    children: [
                      const TopMenuBar(),
                      const HeightSpaceWidget(),
                      ProfileImgWidget()
                    ]
                ),
              ),
              const HeightSpaceWidget(),
              SizedBox(
                height: 400,
                child: ProfileDetailsWidget(user: user),
              ),
              const HeightSpaceWidget(),
                Column(
                  children: [
                    IntroWidget(user: user),
                    const HeightSpaceWidget(),

                  ],
                ),
              StatWidget(height: 180, color: AppColors.cyan,
                  textviewTitle: TextView(text: "${user.stats?.yearsExperience}",fontWeight: FontWeight.w800,size: 45,color: AppColors.starkWhite),
                  textview: TextView(text: "Years Experience",size: 15,fontWeight: FontWeight.w600,color: AppColors.starkWhite,),),
              const HeightSpaceWidget(),
              StatWidget(height: 180, color: AppColors.mustardYellow,
                textviewTitle:
                TextView(text: "${user.stats?.projects}",fontWeight: FontWeight.w800,size: 45,color: AppColors.leadBlack,),
                textview: TextView(text: "Handled Projects",size: 15,fontWeight: FontWeight.w600,color: AppColors.leadBlack,),
              ),
              const HeightSpaceWidget(),
              StatWidget(height: 180, color: AppColors.lightPink,
                textviewTitle:
                TextView(text: "${user.stats?.clients}",fontWeight: FontWeight.w800,size: 45,color: AppColors.starkWhite),
                textview: TextView(text: "Clients",size: 15,fontWeight: FontWeight.w600,color: AppColors.starkWhite),
              ),
              const HeightSpaceWidget(),
              CardWidget(
                height:700,
                child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextView(text: "UI Portfolio",size: 20,fontWeight: FontWeight.w700,color: AppColors.starkWhite,),
                      TextView(text: "See All",size: 20,fontWeight: FontWeight.w400,color: AppColors.lightWhite,),
                    ],
                  ),
                  const HeightSpaceWidget(),
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
                  const HeightSpaceWidget(),
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
                  const HeightSpaceWidget(),
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
              ),),

              const HeightSpaceWidget(),
            SizedBox(
              height: 250,
              child: AboutWidget(user: user, fontSize: 14, fontSizeTitle: 16,),
            ),

            ]
        ),
      ),
    );
  }
}

