import 'package:flutter/material.dart';

import '../constant.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final Function press;

  const DefaultButton({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: TextButton(
          onPressed: press,
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            backgroundColor: kPrimaryColor,
          ),
          child: Text(
            text.toUpperCase(),
            style: TextStyle(
              color: kTextColor,
              fontWeight: FontWeight.bold,
            ),
          )),
    );
  }
}
