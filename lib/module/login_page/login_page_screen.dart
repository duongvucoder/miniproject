import 'package:flutter/material.dart';
import 'package:mini_project_newfeed/module/login_page/news_feed_page/newsfeed_screen.dart';
import 'package:mini_project_newfeed/widgets/avatar.dart';
import 'package:mini_project_newfeed/widgets/mytexfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 120,
            ),
            const BuildAvart(),
            const SizedBox(
              height: 16,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  const MyTextField(
                    labelText: 'Số điện thoại',
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(height: 8),
                  const MyTextField(
                    labelText: 'Mật khẩu',
                    keyboardType: TextInputType.text,
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                        onPressed: (() {}),
                        child: const Text('Đăng ký'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => NewFeedPage()),
                          );
                        },
                        child: const Text('Đăng nhập'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: 'HotLine:'),
                  TextSpan(
                    text: '  1800.1186',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
