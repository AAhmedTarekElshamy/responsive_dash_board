import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';
import 'package:responsive_dash_board/widgets/adaptive_layout_widget.dart';

import '../widgets/dashboard_desktop_layout.dart';


class DashBoradView extends StatefulWidget {
  const DashBoradView({super.key});

  @override
  State<DashBoradView> createState() => _DashBoradViewState();
}

class _DashBoradViewState extends State<DashBoradView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return const Scaffold(


      backgroundColor: Color(0xffF6F8FB),

      body: DashboardDesktopLayout(),

    );
  }
}
/*
* AdaptiveLayout(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) =>const SizedBox(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
*
* */