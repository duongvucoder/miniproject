import 'package:flutter/material.dart';
import 'package:mini_project_newfeed/model/item_left_menu.dart';

class Mylist extends StatefulWidget {
  const Mylist({Key? key}) : super(key: key);
  @override
  State<Mylist> createState() => _MylistState();
}

class _MylistState extends State<Mylist> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final item = Itemlefmenu.getItem();
//final items = Item.newFeedItem();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100, //set your height
          flexibleSpace: SafeArea(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              color: Colors.blue, // set your color
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(150),
                    child: Image.asset(
                      'assets/images/duongvu.jpeg',
                      width: 75,
                      height: 75,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: const [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Dương Vũ',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '0974960508',
                        style: TextStyle(
                          fontSize: 19,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        body: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          itemBuilder: (context, index) {
            final items = item[index];
            return buildItem(items);
          },
          separatorBuilder: (context, index) => Divider(),
          itemCount: item.length,
        ),
      ),
    );
  }

  Widget buildItem(Itemlefmenu item) {
    return Row(
      children: [
        item.icon,
        const SizedBox(
          width: 25,
        ),
        Text(
          item.name,
          style: const TextStyle(
            fontSize: 22,
            //fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
