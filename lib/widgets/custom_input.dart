import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_firebase/constants.dart';

class CustomInput extends StatelessWidget {

 // const CustomInput({Key? key}) : super(key: key);

  final String hintText;

  CustomInput({required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 24.0
        ),
        decoration: BoxDecoration(
          color: Color(0xFFF2F2F2),
          borderRadius: BorderRadius.circular(12.0)
        ),
        child: TextField (
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 8.0,
            )
          ),
          style: Constants.regularDarkText,
        ),
    );
  }
}

