import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final Text text;
  final Color color;
  final String iconDir;
  final GestureTapCallback onPressed;

  CustomButton(
      {required this.onPressed,
      required this.color,
      required this.text,
      required this.iconDir});
  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: widget.color,
        minimumSize: Size(double.infinity, 2),
      ),
      onPressed: widget.onPressed,
      child: Container(
        padding: EdgeInsets.only(left: 11, top: 16, bottom: 16),
        child: Row(children: [
          Padding(
            padding: EdgeInsets.only(right: 19),
            child: Image(width: 21, image: AssetImage(widget.iconDir)),
          ),
          widget.text
        ]),
      ),
    ));
  }
}

class TextCenterButton extends StatefulWidget {
  final Text text;
  final Color color;
  final GestureTapCallback onPressed;

  TextCenterButton({
    required this.onPressed,
    required this.color,
    required this.text,
  });
  @override
  _TextCenterButtonState createState() => _TextCenterButtonState();
}

class _TextCenterButtonState extends State<TextCenterButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: widget.color,
        minimumSize: Size(double.infinity, 2),
      ),
      onPressed: widget.onPressed,
      child: Container(
        padding: EdgeInsets.only(left: 11, top: 16, bottom: 16),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [widget.text]),
      ),
    ));
  }
}
