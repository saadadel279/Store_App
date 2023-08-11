import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:storeapp/models/product_model.dart';
import 'package:storeapp/services/get_all_product.dart';

import '../widgets/custom_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String id = 'HomePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.cartPlus,
                  color: Colors.black,
                ))
          ],
          title: const Text(
            'New Trend',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 5),
          child: FutureBuilder<List<ProductModel>>(
              future: AllProductServices().getAllProduct(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List<ProductModel>products=snapshot.data!;

                  return GridView.builder(
                    itemCount: products.length,
                      clipBehavior: Clip.none,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1.7,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 90,
                      ),
                      itemBuilder: (Context, index) {
                        return  CustomCard(product: products[index],);
                      });
                } else {
                  return const Scaffold(
                    body: Center(
                        child: Text(
                      'Loading..',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    )),
                  );
                }
              }),
        ));
  }
}
