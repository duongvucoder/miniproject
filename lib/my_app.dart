import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mini_project_newfeed/module/left_menu_page/left_menu_page.dart';
import 'package:mini_project_newfeed/module/left_menu_page/mylist.dart';
import 'package:mini_project_newfeed/module/login_page/login_page_screen.dart';
import 'package:mini_project_newfeed/module/login_page/news_feed_page/newsfeed_screen.dart';
import 'package:mini_project_newfeed/module/profile_page/profile_page.dart';
import 'package:mini_project_newfeed/module/report_page/report_page.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: NewFeedPage(),
      //home: LeftMenuPage(),
      // home: Mylist(),
      // home: ProfilePage(),
      //home: ReportPage(),
      home: LoginPage(),
    );
  }
}
