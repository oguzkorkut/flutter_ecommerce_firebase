import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_ecommerce_firebase/constants.dart';
import 'package:flutter_ecommerce_firebase/screens/home_page.dart';
import 'package:flutter_ecommerce_firebase/screens/login_page.dart';


class LandingPage extends StatelessWidget {
  //const LandingPage({Key? key}) : super(key: key);

  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          // If snapshot has error
          if (snapshot.hasError) {
            return Scaffold(
              body: Center(
                child: Text(
                  'Error: ${snapshot.error}',
                ),
              ),
            );
          }

          // Connection initialized - firebase App is running
          if (snapshot.connectionState == ConnectionState.done) {
            //StreamBuilder can check the login state live
            return StreamBuilder(
              stream: FirebaseAuth.instance.authStateChanges(),
              builder: (context, streamSnapshot) {
                if (streamSnapshot.hasError) {
                  return Scaffold(
                    body: Center(
                      child: Text('Error: ${streamSnapshot.hasError}'),
                    ),
                  );
                }

                // Connection state active - Do the user login check inside the if statement
                if (streamSnapshot.connectionState == ConnectionState.active) {
                  // Get the user
                  Object? _user = streamSnapshot.data;

                  // if the user is null, we are not logged in
                  if (_user == null) {
                    // user not logged in, head to login
                    return LoginPage();
                  } else {
                    // The user is logged in, head to homepage
                    return HomePage();
                  }
                }

                // Checking the Auth State - Loading
                return Scaffold(
                  body: Center(
                    child: Text('Checking Authentication',
                      style: Constants.regularHeading,),
                  ),
                );
              },
            );
          }

          // Connecting to Firebase - Londing
          return Scaffold(
            body: Center(
              child: Text('Initialization App',
              style: Constants.regularHeading,),
            ),
          );
        },
      ),
    );
  }
}