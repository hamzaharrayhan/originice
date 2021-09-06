import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:originice/Component/button/button.dart';
import 'package:originice/Component/text-input/customTextInput.dart';

class SignUp extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.only(left: 34, bottom: 14, right: 34, top: 74),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(bottom: 14),
                      child: Image(
                        image: AssetImage('assets/illustrations/ill-logo.png'),
                        width: 205,
                      ),
                    ),
                  ),
                  Text('Register yourself to be part of Originice',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black)),
                  SizedBox(
                    height: 43,
                  ),
                  CustomButton(
                      onPressed: () => {},
                      color: Color.fromRGBO(219, 245, 252, 1),
                      text: Text(
                        'Sign Up with Google',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                      iconDir: 'assets/icons/ic-google-G.png'),
                  SizedBox(
                    height: 34,
                  ),
                  CustomTextInput(
                    keyboardType: TextInputType.name,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return 'Please fill the form!';
                      } else {
                        return null;
                      }
                    },
                    onPressed: () => {},
                    color: Colors.white,
                    text: "Name",
                    iconDir: 'assets/icons/ic-account.png',
                    obscureText: false,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  CustomTextInput(
                    keyboardType: TextInputType.emailAddress,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return 'Please fill the form!';
                      } else {
                        return null;
                      }
                    },
                    onPressed: () => {},
                    color: Colors.white,
                    text: "Email Address",
                    iconDir: 'assets/icons/ic-email.png',
                    obscureText: false,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  CustomTextInput(
                    keyboardType: TextInputType.visiblePassword,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return 'Please fill the form!';
                      } else {
                        return null;
                      }
                    },
                    onPressed: () => {},
                    color: Colors.white,
                    text: "Password",
                    iconDir: 'assets/icons/ic-padlock.png',
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 34,
                  ),
                  TextCenterButton(
                    onPressed: () {
                      if (!_formKey.currentState!.validate()) {
                        return;
                      } else
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Form Completed! Saving...')));
                      Get.toNamed('/greetings');
                    },
                    color: Color.fromRGBO(0, 114, 255, 1),
                    text: Text(
                      "CREATE ACCOUNT",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 15),
                    ),
                  ),
                  SizedBox(
                    height: 64,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text("Already have an account? ",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 12)),
                    InkWell(
                        child: Text('Sign in',
                            style: TextStyle(
                                color: Color.fromRGBO(0, 114, 255, 1),
                                fontWeight: FontWeight.w400,
                                fontSize: 12)),
                        onTap: () => Get.toNamed('/sign-in')),
                  ])
                ],
              ),
            )));
  }
}
