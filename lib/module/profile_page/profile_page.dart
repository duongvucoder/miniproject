import 'package:flutter/material.dart';
import 'package:mini_project_newfeed/module/login_page/news_feed_page/newsfeed_screen.dart';
import 'package:mini_project_newfeed/widgets/mytexfield.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(title: 'Tài khoản', context: context),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(75),
                    child: Image.asset(
                      'assets/images/duongvu.jpeg',
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Positioned(
                    right: 8,
                    bottom: 10,
                    child: Icon(
                      Icons.camera_alt_outlined,
                      size: 35,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const MyTextField(
                hintText: 'Họ và Tên',
                keyboardType: TextInputType.text,
                textCapitalization: TextCapitalization.words,
              ),
              const SizedBox(
                height: 20,
              ),
              const MyTextField(
                hintText: 'Ngày sinh',
                keyboardType: TextInputType.text,
                textCapitalization: TextCapitalization.words,
              ),
              const SizedBox(
                height: 20,
              ),
              const MyTextField(
                hintText: 'Địa chỉ',
                keyboardType: TextInputType.text,
                textCapitalization: TextCapitalization.words,
              ),
              const SizedBox(
                height: 20,
              ),
              const MyTextField(
                hintText: 'Số điện thoại',
                keyboardType: TextInputType.number,
              ),
              const SizedBox(
                height: 20,
              ),
              const MyTextField(
                hintText: 'Email',
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 16,
              ),
              GestureDetector(
                onTap: () {
                  print('GestureDetector');
                },
                child: Container(
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
}
