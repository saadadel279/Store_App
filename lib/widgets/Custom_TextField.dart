import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({Key? key, this.hintText,this.type,required this.onChanged,this.obscureText=false}) : super(key: key);

  final String? hintText;
  Function(String)?onChanged;
  bool? obscureText;
  TextInputType? type;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText!,
     keyboardType: type,
      
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
      
        enabledBorder:  OutlineInputBorder(
          borderSide: const BorderSide(
           
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        border:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            
          ),
        ),
      ),
    );
  }
}
