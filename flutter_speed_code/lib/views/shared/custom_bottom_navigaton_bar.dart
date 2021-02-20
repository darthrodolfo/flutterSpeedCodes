import 'package:flutter/material.dart';
import 'package:flutter_speed_code/theme/theme_constants.dart';
import 'package:flutter_svg/svg.dart';

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
      height: 70,
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
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: tPrimaryColor,
                    width: 3,
                  ),
                ),
              ),
              child: IconButton(
                icon: SvgPicture.asset('assets/icons/flower.svg'),
                onPressed: () {},
                tooltip: 'Store',
                alignment: Alignment.bottomCenter,
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: IconButton(
                icon: SvgPicture.asset('assets/icons/heart-icon.svg'),
                onPressed: () {},
                tooltip: 'Favorites',
                alignment: Alignment.bottomCenter,
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: IconButton(
                icon: SvgPicture.asset('assets/icons/user-icon.svg'),
                onPressed: () {},
                tooltip: 'Profile',
                alignment: Alignment.bottomCenter,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
