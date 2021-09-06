import 'package:flutter/material.dart';

class CustomTextInput extends StatefulWidget {
  final String text;
  final Color color;
  final String iconDir;
  final GestureTapCallback onPressed;
  final String? Function(String?)? validator;
  final TextInputType keyboardType;
  final bool obscureText;

  CustomTextInput(
      {required this.onPressed,
      required this.color,
      required this.text,
      required this.validator,
      required this.keyboardType,
      required this.iconDir,
      required this.obscureText});
  @override
  _CustomTextInputState createState() => _CustomTextInputState();
}

class _CustomTextInputState extends State<CustomTextInput> {
  bool onFocus = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(color: Colors.transparent, boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(130, 118, 118, 0.25),
          spreadRadius: 3,
          blurRadius: 10,
        )
      ]),
      child: TextFormField(
          obscureText: widget.obscureText,
          validator: widget.validator,
          autofocus: false,
          onTap: widget.onPressed,
          keyboardType: widget.keyboardType,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide(
                color: Color.fromRGBO(227, 223, 223, 1),
                width: 1.0,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.blue.shade100, width: 2)),
            filled: true,
            contentPadding: EdgeInsets.only(top: 16, bottom: 16),
            fillColor: widget.color,
            isDense: true,
            hintText: widget.text,
            hintStyle: TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.w400),
            prefixIcon: Container(
              child: Padding(
                padding: EdgeInsets.only(right: 19, left: 17),
                child: Image(width: 21, image: AssetImage(widget.iconDir)),
              ),
            ),
          )),
    );
  }
}
