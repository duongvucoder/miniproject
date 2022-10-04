import 'package:flutter/material.dart';

class MyAppbar extends StatefulWidget {
  final String title;
  final Color backgroundColor;
  final Color textcolor;

  const MyAppbar({
    Key? key,
    required this.title,
    this.backgroundColor = Colors.blue,
    this.textcolor = Colors.black,
  }) : super(key: key);

  @override
  State<MyAppbar> createState() => _MyAppbarState();
}

class _MyAppbarState extends State<MyAppbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        widget.title,
        style: TextStyle(
          color: widget.textcolor,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: widget.backgroundColor,
    );
  }
}
