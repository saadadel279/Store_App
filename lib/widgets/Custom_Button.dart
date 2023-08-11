import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
    CustomButton(  {Key? key, this.ActionName,required this.onTap}) : super(key: key);
final String? ActionName;
VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 150,
        height: 45,
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color.fromARGB(255, 122, 120, 120)
        ),
        child: Center(child: Text(ActionName??"",style: const TextStyle(
          fontWeight: FontWeight.bold,fontSize: 18,
          color: Colors.white
        ),)),
      ),
    );
  }
}