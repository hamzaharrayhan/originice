import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            // width: MediaQuery.of(context).size.width / 3,
            // height: MediaQuery.of(context).size.width / 3,
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage('assets/Logo.png'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
