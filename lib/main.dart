import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:originice/GreetingsView/greetings.dart';
import 'package:originice/SignInView/signin.dart';
import 'package:originice/SignUpView/signup.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/greetings',
      getPages: [
        GetPage(name: '/sign-in', page: () => SignIn()),
        GetPage(name: '/sign-up', page: () => SignUp()),
        GetPage(name: '/greetings', page: () => Greetings()),
      ],
      title: 'Originice',
      theme: ThemeData(
          textTheme: GoogleFonts.openSansTextTheme(
        Theme.of(context).textTheme,
      )),
      home: SignIn(),
      debugShowCheckedModeBanner: false,
    );
  }
}
