import 'package:flutter/material.dart';

import 'custom_drawer.dart';
class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
            flex: 280,
            child: CustomDrawer()),
        // Expanded(
        //   flex: 1,
        //     child: Column()),

        Expanded(
          flex: 604,
          child: Center(
            child: Text(
              'All Expenses',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
        Expanded(
          flex: 468,
          child: Center(
            child: Text(
              'Main Content Area',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),


      ],
    );
  }
}
