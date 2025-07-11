import 'package:flutter/material.dart';

import '../models/drawer_item_model.dart';
import '../utils/app_images.dart';
import 'drawer_item.dart';

class DrawerItemListView extends StatefulWidget {
  DrawerItemListView({super.key});
  


  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  int selectedIndex=0;
  final List<DrawerItemModel> list = [
    const DrawerItemModel(title: 'Dashboard', image: Assets.imagesDashboard),
    const DrawerItemModel(
        title: 'My Transaction', image: Assets.imagesMyTransctions),
    const DrawerItemModel(title: 'Statistics', image: Assets.imagesStatistics),
    const DrawerItemModel(
        title: 'Wallet Account', image: Assets.imagesWalletAccount),
    const DrawerItemModel(
        title: 'My Investments', image: Assets.imagesMyInvestments),
  ];

  @override
  Widget build(BuildContext context) {
    return  SliverList.builder(
      itemCount:  list.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: (){
            setState(() {
              if( selectedIndex != index){
                selectedIndex = index;

              }
            });

          },
          child: Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: DrawerItem(drawerItemModel: list[index],
              isActive: selectedIndex == index,
            ),

          ),
        );
      },
    );
  }
}
