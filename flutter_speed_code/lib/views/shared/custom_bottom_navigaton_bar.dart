import 'package:flutter/material.dart';
import 'package:flutter_speed_code/theme/theme_constants.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: tDefaultPadding * 2,
        right: tDefaultPadding * 2,
        bottom: tDefaultPadding,
      ),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              offset: Offset(0, -10),
              blurRadius: 35,
              color: tPrimaryColor.withOpacity(0.38)),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.access_alarm),
            onPressed: () {},
            tooltip: 'Home',
          ),
          IconButton(
            icon: Icon(Icons.access_alarm),
            onPressed: () {},
            tooltip: 'Home',
          ),
          IconButton(
            icon: Icon(Icons.access_alarm),
            onPressed: () {},
            tooltip: 'Home',
          ),
        ],
      ),
    );
  }
}
