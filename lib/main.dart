import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:responsive_dash_board/views/dashboard_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      title: 'Flutter Demo',

      debugShowCheckedModeBanner: false,
      home: DashBoradView(),

    );
  }
}




