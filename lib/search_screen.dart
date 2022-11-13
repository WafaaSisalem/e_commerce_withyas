import 'package:e_commerce_with_yasmeen/dummyyyyyyy.dart';
import 'package:e_commerce_with_yasmeen/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'search_widget.dart';
import 'widgets/shopping_icon.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          SizedBox(
            height: 57,
            width: double.infinity,
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
          SizedBox(
            height: 20,
          ),
          Text('${products.length} results fonund'),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: GridView.builder(
                padding: EdgeInsets.fromLTRB(15, 20, 15, 15),
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    mainAxisExtent: 250,
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(5)),
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                            width: double.infinity,
                            height: 200,
                            decoration: BoxDecoration(
                                color: const Color(0xFFF2F2F2),
                                borderRadius: BorderRadius.circular(5)),
                            padding: EdgeInsets.all(25),
                            child: Image.asset(
                              products[index].imagePath,
                            )),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                products[index].name,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                              Text(
                                products[index].price.toString(),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                }),
          ),
        ]),
      ),
    );
  }
}
