
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
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
                  const Text(
                    'Handbag LV',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        r'$150',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Icon(
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
            right: 38,
            top: -60,
            child: Image.network(
              'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg',
              height: 100,
            ))
      ],
    );
  }
}
