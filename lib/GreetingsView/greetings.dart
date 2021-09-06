import 'package:flutter/material.dart';
import 'package:originice/Component/button/button.dart';

class Greetings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF5FDFF),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
              padding: EdgeInsets.only(bottom: 14),
              child: Image(
                  image: AssetImage('assets/illustrations/ill-logo.png'),
                  width: 205)),
          Padding(
            padding: EdgeInsets.only(bottom: 57),
            child: Text(
              "Welcome, Harimau Sumatera!",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 113),
            child: Container(
              color: Colors.black12,
              child: TextCenterButton(
                  onPressed: () {},
                  color: Color(0xFF0072FF),
                  text: Text(
                    'Start Organizing',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
