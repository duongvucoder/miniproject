import 'package:flutter/material.dart';
import 'package:mini_project_newfeed/model/item.dart';
import 'package:mini_project_newfeed/module/login_page/news_feed_page/newsfeed_screen.dart';
import 'package:mini_project_newfeed/widgets/mytexfield.dart';

class ReportPage extends StatefulWidget {
  const ReportPage({Key? key}) : super(key: key);

  @override
  State<ReportPage> createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  final item = Item.newFeedItem();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(title: 'Báo cáo', context: context),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const MyTextField(
                hintText: 'Tieu de',
              ),
              const SizedBox(
                height: 20,
              ),
              const MyTextField(
                hintText: 'Noi dung',
              ),
              buildItem(),
              GestureDetector(
                onTap: () {
                  print('GestureDetector');
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  alignment: Alignment.center,
                  height: 50,
                  color: Colors.blue,
                  width: double.infinity,
                  child: const Text(
                    'Lưu',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildItem() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      height: 500,
      width: double.infinity,
      child: (GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 95,
            childAspectRatio: 1.0,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
          ),
          itemBuilder: (context, index) {
            final items = item[index];
            return buildItem2(items);
          },
          itemCount: item.length)),
    );
  }

  Widget buildItem2(Item item) {
    return Row(
      children: [
        Image.asset(item.photo),
      ],
    );
  }
}
