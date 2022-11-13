import 'package:flutter/cupertino.dart';

class CategoryModel {
  CategoryModel({
    required this.id,
    required this.name,
    required this.icon,
  });
  late int id;
  late String name;
  late Widget icon;
  CategoryModel.fromMap({required Map map}) {
    id = map['id'];
    name = map['name'];
    icon = map['icon'];
  }
  toMap() {
    return {
      'id': id,
      'name': name,
      'icon': icon,
    };
  }
}
