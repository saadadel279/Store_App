import 'package:flutter/material.dart';
import 'package:storeapp/screens/home_screan.dart';

void main() {
  runApp(const StoreApp());
}
class StoreApp extends StatelessWidget {
  const StoreApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      routes: {
        HomeScreen.id:(context)=> const HomeScreen(),

      },
      initialRoute: HomeScreen.id,
    );
  }
}

