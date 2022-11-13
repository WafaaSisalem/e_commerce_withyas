import 'package:e_commerce_with_yasmeen/models/category_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({Key? key, required this.categoryModel})
      : super(key: key);
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 62,
          height: 62,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: categoryModel.icon,
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: 44,
          child: Text(
            categoryModel.name,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.blue,
            ),
          ),
        )
      ],
    );
  }
}
