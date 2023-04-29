import 'package:flutter/material.dart';
import 'package:portfolio_project/src/ui/home/widgets/constants/stat_widget.dart';
import 'package:portfolio_project/src/ui/home/widgets/constants/text_view.dart';
import 'package:portfolio_project/src/ui/home/widgets/constants/width_space_widget.dart';

import '../../../../core/colors.dart';
import '../../../../data/user_service.dart';
import '../../../../model/user_details_model.dart';

class StatRowWidget extends StatefulWidget {
   double? height;
   StatRowWidget({Key? key,  this.height,}) : super(key: key);

  @override
  State<StatRowWidget> createState() => _StatRowWidgetState();

}

class _StatRowWidgetState extends State<StatRowWidget> {
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
    return isLoading?
    const Center(child: CircularProgressIndicator()):
    Row(
      mainAxisAlignment: MainAxisAlignment
          .spaceAround,
      children: [
        Expanded(
          child: StatWidget(height: widget.height, color: AppColors.cyan,textviewTitle:
          TextView(text: "${user.stats?.yearsExperience}",fontWeight: FontWeight.w800,size: 45,color: AppColors.starkWhite),
            textview: TextView(text: "Years Experience",size: 15,fontWeight: FontWeight.w600,color: AppColors.starkWhite,),
          ),
        ),
        const WidthSpaceWidget(),
        Expanded(
          child: StatWidget(height: widget.height, color: AppColors.mustardYellow,textviewTitle:
          TextView(text: "${user.stats?.projects}",fontWeight: FontWeight.w800,size: 45,color: AppColors.leadBlack,),
            textview: TextView(text: "Handled Projects",size: 15,fontWeight: FontWeight.w600,color: AppColors.leadBlack,),
          ),
        ),
        const WidthSpaceWidget(),
        Expanded(
          child: StatWidget(height: widget.height, color: AppColors.lightPink,textviewTitle:
          TextView(text: "${user.stats?.clients}",fontWeight: FontWeight.w800,size: 45,color: AppColors.starkWhite),
            textview: TextView(text: "Clients",size: 15,fontWeight: FontWeight.w600,color: AppColors.starkWhite),
          ),
        ),

      ],
    );
  }
}

