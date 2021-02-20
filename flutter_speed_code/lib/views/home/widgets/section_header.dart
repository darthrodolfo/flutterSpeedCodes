import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_speed_code/theme/theme_constants.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({Key key, this.title, this.onPressed}) : super(key: key);
  final String title;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: tDefaultPadding),
          child: Row(
            children: <Widget>[
              TitleWithCustomUnderline(
                text: title,
              ),
              Spacer(),
              FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: tPrimaryColor,
                child: Text(
                  'More',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: onPressed,
              )
            ],
          )),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    Key key,
    this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: tDefaultPadding / 4),
            child: Text(
              text,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: tDefaultPadding / 4),
              height: 7,
              color: tPrimaryColor.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}
