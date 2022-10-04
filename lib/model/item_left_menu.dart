import 'package:flutter/material.dart';

class Itemlefmenu {
  final Icon icon;
  final String name;
  Itemlefmenu(this.icon, this.name);
  static List<Itemlefmenu> getItem() {
    final items = <Itemlefmenu>[];
    items.addAll([
      Itemlefmenu(
          const Icon(
            Icons.toc_rounded,
            size: 50,
          ),
          'Su co'),
      Itemlefmenu(
          const Icon(
            Icons.password_outlined,
            size: 50,
          ),
          'Doi mat khau'),
      Itemlefmenu(
          const Icon(
            Icons.preview_outlined,
            size: 50,
          ),
          'Dieu khoan'),
      Itemlefmenu(
          const Icon(
            Icons.contact_phone_sharp,
            size: 50,
          ),
          'Lien he'),
      Itemlefmenu(
          const Icon(
            Icons.note_alt,
            size: 50,
          ),
          'Bao cao'),
      Itemlefmenu(
          const Icon(
            Icons.login_outlined,
            size: 50,
          ),
          'Dang Xuat'),
    ]);
    return items;
  }
}
