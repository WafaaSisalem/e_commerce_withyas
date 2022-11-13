import 'package:e_commerce_with_yasmeen/models/product_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopularProductWidget extends StatelessWidget {
  const PopularProductWidget({Key? key, required this.productModel})
      : super(key: key);
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 132,
          child: Row(children: [
            Container(
              width: 105,
              height: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.red),
              child: Image.asset(
                productModel.imagePath,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(productModel.name),
                const SizedBox(
                  height: 4,
                ),
                Text('\$${productModel.price}')
              ],
            )
          ]),
        ),
        const Positioned(
          top: 35,
          right: 20,
          child: Icon(
            Icons.favorite,
          ),
        ),
        Positioned(
          bottom: 32,
          right: 20,
          child: Container(
            width: 51,
            height: 24,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(12)),
            child: const Icon(Icons.shopping_cart),
          ),
        )
      ],
    );
  }
}
