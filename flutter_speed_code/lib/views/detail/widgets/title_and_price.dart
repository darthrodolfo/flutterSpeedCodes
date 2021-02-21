import 'package:flutter/material.dart';
import 'package:flutter_speed_code/theme/theme_constants.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({Key key, this.title, this.country, this.price})
      : super(key: key);
  final String title, country;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: tDefaultPadding),
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '$title\n',
                    style: Theme.of(context).textTheme.headline4.copyWith(
                          color: tTextColor,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  TextSpan(
                    text: country,
                    style: TextStyle(
                      fontSize: 20,
                      color: tPrimaryColor,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    '\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        .copyWith(color: tPrimaryColor),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
