import 'package:flutter/material.dart';
import 'package:storeapp/screens/home_screan.dart';
import 'package:storeapp/screens/update_product.dart';

void main() {
  runApp(const StoreApp());
}
class StoreApp extends StatelessWidget {
  const StoreApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.id:(context)=> const HomeScreen(),
        UpdateProductScreen.id:(context) =>  const UpdateProductScreen()

      },
      initialRoute: HomeScreen.id,
    );
  }
}

