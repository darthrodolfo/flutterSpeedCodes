import 'package:flutter/material.dart';
import 'package:flutter_speed_code/theme/theme_constants.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          FeaturedPlantCard(
            image: 'assets/images/bottom_img_1.png',
            onPress: () {},
          ),
          FeaturedPlantCard(
            image: 'assets/images/bottom_img_2.png',
            onPress: () {},
          ),
        ],
      ),
    );
  }
}

class FeaturedPlantCard extends StatelessWidget {
  const FeaturedPlantCard({Key key, this.image, this.onPress})
      : super(key: key);

  final String image;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(
            left: tDefaultPadding,
            top: tDefaultPadding / 2,
            bottom: tDefaultPadding),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
