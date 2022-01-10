import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_firebase/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('HomePage',
        style: Constants.regularHeading,),
      ),
    );
  }
}
