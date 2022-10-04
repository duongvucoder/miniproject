import 'package:flutter/material.dart';
import 'package:mini_project_newfeed/module/left_menu_page/mylist.dart';
import 'package:mini_project_newfeed/module/login_page/news_feed_page/newsfeed_screen.dart';

class LeftMenuPage extends StatefulWidget {
  const LeftMenuPage({Key? key}) : super(key: key);

  @override
  State<LeftMenuPage> createState() => _LeftMenuPageState();
}

class _LeftMenuPageState extends State<LeftMenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(title: 'Left Menu Page', context: context),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showBottomSheet();
          },
          child: const Text('Show Bottom Sheet'),
        ),
      ),
    );
  }

  void showBottomSheet() {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        isScrollControlled: true,
        context: context,
        isDismissible: true,
        builder: (context) {
          //return VATForm();
          // return Mylist();
          return const Mylist();
        });
  }
}
