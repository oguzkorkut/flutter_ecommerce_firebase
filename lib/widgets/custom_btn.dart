import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  //const CustomBtn({Key? key}) : super(key: key);

  final String text;
  final Function onPressed;
  final bool outlineBtn;

  const CustomBtn({required this.text, required this.onPressed, required this.outlineBtn});

  @override
  Widget build(BuildContext context) {
    bool _outlineBtn = outlineBtn ? outlineBtn : false;
    //bool _isLoading = isLoading ?? false;

    return GestureDetector(
      onTap: onPressed(),
      child: Container(
        height: 65.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: _outlineBtn ? Colors.transparent : Colors.black,
          border: Border.all(
            color: Colors.black,
            width: 2.0
          ),
          borderRadius: BorderRadius.circular(12.0)
        ),
        margin: EdgeInsets.symmetric(
            horizontal: 24.0,
            vertical: 24.0
        ),
        child: Text(
          // 'Create New Account',
          //text ?? 'Text',
          text,
          style: TextStyle(
            fontSize: 16.0,
            color: _outlineBtn ? Colors.black : Colors.white,
            fontWeight: FontWeight.w600
          ),
        ),
      ),
    );
  }
}
