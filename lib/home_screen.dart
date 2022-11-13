import 'package:e_commerce_with_yasmeen/models/category_model.dart';
import 'package:e_commerce_with_yasmeen/models/product_model.dart';
import 'package:e_commerce_with_yasmeen/widgets/shopping_icon.dart';
import 'package:flutter/material.dart';

import 'category_widget.dart';
import 'dummyyyyyyy.dart';
import 'new_product_widget.dart';
import 'popular_widget.dart';
import 'search_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: topPartContainerStyle(),
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 57,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SearchWidget(onChanged: (text) {
                            print(text);
                          }),
                          const SizedBox(
                            width: 6,
                          ),
                          ShoppingIcon(onTap: () {})
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  const Text('Category'),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 102,
                    child: listOfCategories(),
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('New Products'),
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                  height: 173,
                  child: listOfNewProducts(),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text('Popular'),
                const SizedBox(
                  height: 22,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 30,
                  ),
                  child: SizedBox(
                    height: 200,
                    child: ListView.separated(
                      itemBuilder: ((context, index) =>
                          PopularProductWidget(productModel: products[index])),
                      itemCount: products.length,
                      separatorBuilder: (context, index) => const SizedBox(
                        height: 15,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }

  ListView listOfNewProducts() {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: ((context, index) => NewProductWidget(
            productModel: products[index],
          )),
      itemCount: products.length,
      separatorBuilder: (context, index) => const SizedBox(
        width: 10,
      ),
    );
  }

  ListView listOfCategories() {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: ((context, index) => CategoryWidget(
            categoryModel: categories[index],
          )),
      itemCount: categories.length,
      separatorBuilder: (context, index) => const SizedBox(
        width: 10,
      ),
    );
  }

  BoxDecoration topPartContainerStyle() {
    return const BoxDecoration(
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
      color: Color(0xffF6F6F7),
    );
  }
}
