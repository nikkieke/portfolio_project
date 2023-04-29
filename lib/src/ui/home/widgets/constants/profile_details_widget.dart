import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio_project/src/ui/home/widgets/constants/text_view.dart';
import 'package:url_launcher/link.dart';

import '../../../../core/colors.dart';
import '../../../../data/user_service.dart';
import '../../../../model/user_details_model.dart';
import 'card_widget.dart';
import 'height_space_widget.dart';
import 'package:url_launcher/url_launcher.dart';


class ProfileDetailsWidget extends StatelessWidget {
  const ProfileDetailsWidget({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {

    final Uri linkedinUrl = Uri.parse("${user.socialMedia?.linkedin}");
    final Uri dribbleUrl = Uri.parse("${user.socialMedia?.dribble}");
    final Uri twitterUrl = Uri.parse("${user.socialMedia?.twitter}");
    final Uri instagramUrl = Uri.parse("${user.socialMedia?.instagram}");



    return Column(
      mainAxisAlignment: MainAxisAlignment
          .spaceBetween,
      children: [
        if(MediaQuery.of(context).size.width <= 240)...[
          CardWidget(height: 70, child:
          TextView(text: "${user.name}",color: AppColors.starkWhite,fontWeight: FontWeight.w700,size: 9,),
          ),
          const HeightSpaceWidget(),
          Expanded(
              flex: 2,
              child: CardWidget(
                  height: 50, child:
              Column(
                children: [
                  TextView(text: "${user.basedIn}",
                    color: AppColors.starkWhite,fontWeight: FontWeight.w700,size: 8,),
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                          image:DecorationImage(
                              colorFilter: ColorFilter.srgbToLinearGamma(),
                              fit: BoxFit.cover,
                              opacity: 0.5,
                              image:  AssetImage("assets/images/map_img.png",)
                          )
                      ),
                    ),
                  ),
                ],
              ))),
          const HeightSpaceWidget(),
          CardWidget(height: 200,
              child: Column(
                children: [
                  IconWidget(color: AppColors.blue,icon:SvgPicture.asset(
                    "assets/icons/linkedin.svg",width: 20,
                  ),),
                  IconWidget(color: AppColors.iconBg,icon:SvgPicture.asset(
                    "assets/icons/dribbble.svg",width: 20,
                  ),),
                  IconWidget(color: AppColors.iconBg,icon:SvgPicture.asset(
                    "assets/icons/twitter.svg",width: 20,
                  ),),
                  IconWidget(color: AppColors.iconBg,icon:SvgPicture.asset(
                    "assets/icons/instagram.svg",width: 20,
                  ),),

                ],
              )),
        ]else...[
          CardWidget(height: 70, child:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextView(text: "Name:",color: AppColors.lightWhite,size: 13,),
              TextView(text: "${user.name}",color: AppColors.starkWhite,fontWeight: FontWeight.w700,size: 13,),

            ],
          )),
          const HeightSpaceWidget(),
          Expanded(
              flex: 2,
              child: CardWidget(
                  height: 50, child:
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      TextView(text: "Based in:",color: AppColors.lightWhite,size: 13,),
                      TextView(text: "${user.basedIn}",
                        color: AppColors.starkWhite,fontWeight: FontWeight.w700,size: 13,),
                    ],
                  ),
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                          image:DecorationImage(
                              colorFilter: ColorFilter.srgbToLinearGamma(),
                              fit: BoxFit.cover,
                              opacity: 0.5,
                              image:  AssetImage("assets/images/map_img.png",)
                          )
                      ),
                    ),
                  )
                ],
              ))),
          const HeightSpaceWidget(),
          CardWidget(height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Link(
                    target: LinkTarget.blank,
                    uri: linkedinUrl,
                    builder: (context,followLink)=> InkWell(
                      onTap: ()=> followLink,
                      child: IconWidget(color: AppColors.blue,icon:SvgPicture.asset(
                        "assets/icons/linkedin.svg",width: 20,
                      ),),
                    ),
                  ),

                  Link(
                    target: LinkTarget.blank,
                    uri: dribbleUrl,
                    builder: (context,followLink)=> InkWell(
                      onTap: ()=> followLink,
                      child: IconWidget(color: AppColors.iconBg,icon:SvgPicture.asset(
                        "assets/icons/dribbble.svg",width: 20,
                      ),),
                    ),
                  ),

                  Link(
                    target: LinkTarget.blank,
                    uri: twitterUrl,
                    builder: (context,followLink)=> InkWell(
                      onTap: ()=> followLink,
                      child: IconWidget(color: AppColors.iconBg,icon:SvgPicture.asset(
                        "assets/icons/twitter.svg",width: 20,
                      ),),
                    ),
                  ),

                  Link(
                    target: LinkTarget.blank,
                    uri: instagramUrl,
                    builder: (context,followLink)=> InkWell(
                      onTap: ()=> followLink,
                      child: IconWidget(color: AppColors.iconBg,icon:SvgPicture.asset(
                        "assets/icons/instagram.svg",width: 20,
                      ),),
                    ),
                  ),

                ],
              )),
        ]
      ],
    );

  }

}









class IconWidget extends StatelessWidget {
  const IconWidget({
    super.key,
    required this.color,
    required this.icon,
  });

  final Color color;
  final SvgPicture icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration:  BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
      child: icon,

    );
  }
}


class AboutWidget extends StatelessWidget {
  const AboutWidget({
    super.key,
    required this.user,
    required this.fontSize,
    required this.fontSizeTitle
  });

  final User user;
  final double fontSize;
  final double fontSizeTitle;

  @override
  Widget build(BuildContext context) {
    return CardWidget(
      height: 240,
      child: Column(
      children: [
        if(MediaQuery.of(context).size.width <= 240)...[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextView(text: "About",size: fontSizeTitle,fontWeight: FontWeight.w700,color: AppColors.starkWhite,),
              TextView(text: "Resume",size: fontSizeTitle,fontWeight: FontWeight.w400,color: AppColors.lightWhite,),
            ],
          ),
        ]
        else...[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextView(text: "About",size: fontSizeTitle,fontWeight: FontWeight.w700,color: AppColors.starkWhite,),
              TextView(text: "Resume",size: fontSizeTitle,fontWeight: FontWeight.w400,color: AppColors.lightWhite,),
            ],
          ),
        ],

        const HeightSpaceWidget(),
        TextView(text: "${user.about}",
              size: fontSize,fontWeight: FontWeight.w400,color: AppColors.lightWhite,)

      ],
    ),);
  }
}