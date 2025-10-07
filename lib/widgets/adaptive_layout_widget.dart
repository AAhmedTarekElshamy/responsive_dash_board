import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';

import '../utils/size_config.dart';

class AdaptiveLayout extends StatefulWidget {
  const AdaptiveLayout(
      {super.key,
      required this.mobileLayout,
      required this.tabletLayout,
      required this.desktopLayout});

  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;

  @override
  State<AdaptiveLayout> createState() => _AdaptiveLayoutState();
}

class _AdaptiveLayoutState extends State<AdaptiveLayout> {
  final GlobalKey<ScaffoldState>scaffoldKey =GlobalKey() ;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.of(context).size.width < SizeConfig.tablet ? AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 0,
          backgroundColor: const Color(0xffFAFAFA),
        leading: IconButton(onPressed: () {
          scaffoldKey.currentState!.openDrawer();
        },
        icon: const Icon(Icons.menu  )),

      ): null,

      drawer: MediaQuery.of(context).size.width < SizeConfig.tablet ? const CustomDrawer() : null ,
      body: LayoutBuilder(builder: (context, constrains) {
        if (constrains.maxWidth < SizeConfig.tablet) {
          return widget.mobileLayout(context);
        } else if (constrains.maxWidth < SizeConfig.desktop) {
          return widget.tabletLayout(context);
        } else {
          return widget.desktopLayout(context);
        }
      }),
    );
  }
}
