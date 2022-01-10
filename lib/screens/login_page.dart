import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_firebase/constants.dart';
import 'package:flutter_ecommerce_firebase/widgets/custom_btn.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //Sağa yaslar
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: EdgeInsets.only(top: 24.0),
                child: Text(
                  'Welcome user, \nLogin to your account',
                  textAlign: TextAlign.center,
                  style: Constants.boldHeading,
                ),
              ),
              Text('Input Fields'),
              CustomBtn(
                  text: 'Create New Account',
                  onPressed: () {
                    print('Clicked the Create Account Button');
                  },
                  outlineBtn:true,
                  isLoading: false,
              )
            ],
          ),
        ),
      ),
    );
  }
}
