import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mini_project_newfeed/model/item.dart';
import 'package:mini_project_newfeed/module/login_page/news_feed_page/bloc/category_bloc.dart';
import 'package:mini_project_newfeed/widgets/appbar.dart';

class NewFeedPage extends StatefulWidget {
  const NewFeedPage({Key? key}) : super(key: key);

  @override
  State<NewFeedPage> createState() => _NewFeedPageState();
}

class _NewFeedPageState extends State<NewFeedPage> {
  CategoryCubit _categoryCubit = CategoryCubit();
  @override
  void initState() {
    _categoryCubit.createListCategory();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(
          title: 'Bảng Tin',
          context: context,
          leading: Icon(
            Icons.menu,
          )),
      body: BlocBuilder<CategoryCubit, CategoryState>(
        bloc: _categoryCubit,
        builder: ((context, state) {
          if (state is CategoryGettingState) {
            //return const Center(child: Text('Dang lay du lieu'));
            return Center(child: CircularProgressIndicator());
          }
          if (state is CategoryGetFailState) {
            return const Center(child: Text('Lỗi lấy dữ liệu'));
          }
          if (state is CategoryGetSuccessState &&
              _categoryCubit.items.isNotEmpty) {
            return ListView.separated(
              itemBuilder: (context, index) {
                final itemss = _categoryCubit.items[index];
                return buildItem(itemss);
              },
              separatorBuilder: (context, index) => SizedBox(
                height: 15,
              ),
              itemCount: _categoryCubit.items.length,
            );
          }
          return const SizedBox();
        }),
      ),
    );
  }

  Widget buildItem(Item item) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 14,
            spreadRadius: 0,
            offset: const Offset(0, 4),
          )
        ],
      ),
      padding: EdgeInsets.symmetric(horizontal: 22, vertical: 8),
      //color: Colors.yellow,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(150),
                child: Image.asset(
                  item.avatar,
                  width: 75,
                  height: 75,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Text(
                    'Dương Vũ',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    item.dateTime,
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.centerRight,
                  //color: Colors.yellow,
                  child: Text(
                    item.onDone,
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.green,
                    ),
                  ),
                ),
              )
            ],
          ),
          Divider(),
          Text(
            item.title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            item.content,
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            height: 8,
          ),
          Image.asset(
            item.photo,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}

AppBar buildAppbar({
  required String title,
  required BuildContext context,
  final Color textcolor = Colors.blue,
  final Color? backgroundcolor,
  final Widget? leading,
}) {
  return AppBar(
    title: Text(
      title,
      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w700,
      ),
    ),
    backgroundColor: backgroundcolor ?? Colors.blue,
    leading: leading,
  );
}
