
import 'package:flutter/material.dart';
import 'package:storeapp/models/product_model.dart';
import 'package:storeapp/screens/update_product.dart';

class CustomCard extends StatelessWidget {
  CustomCard({super.key, 
    required this.product
    
  });
  ProductModel product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, UpdateProductScreen.id,arguments: product);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  blurRadius: 40,
                  offset: const Offset(10, 10),
                  spreadRadius: 0)
            ]),
           
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text(
                      product.title.substring(0,6),
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        Text(
                         r'$' '${product.price.toString()}',
                          style: const TextStyle(color: Colors.grey),
                        ),
                        const Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              right: 30,
              top: -40,
              child: Image.network(
                product.image,
                height: 90,
                width: 90,
              ))
        ],
      ),
    );
  }
}
