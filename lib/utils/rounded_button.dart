import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {

  final String text;
  final VoidCallback? press;
  final Color color,textColor;

  RoundedButton({ Key? key,required this.text, this.press, required this.color, required this.textColor}):super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 20,horizontal: 40),
          color: color,
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
