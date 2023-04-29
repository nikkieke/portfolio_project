import 'package:flutter/material.dart';
import 'package:portfolio_project/src/ui/home/widgets/desktop_view.dart';
import 'package:portfolio_project/src/ui/home/widgets/mobile_view.dart';
import 'package:portfolio_project/src/ui/home/widgets/tab_view.dart';

import '../../core/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.bgColor,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 470){
            return const MobileView();
          }
          else if (constraints.maxWidth >= 1024) {
            return const DesktopView();
          }else {
            return const TabView();

          }

        }
      ),
    );
  }
}

















