import 'package:flutter/material.dart';
import 'package:flutter_speed_code/theme/theme_constants.dart';
import 'package:flutter_speed_code/views/detail/details_screen.dart';

class RecommendedPlants extends StatelessWidget {
  const RecommendedPlants({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          RecommendedPlantCard(
            image: "assets/images/image_1.png",
            title: "Samantha",
            country: "Russia",
            price: 440,
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
          RecommendedPlantCard(
            image: "assets/images/image_2.png",
            title: "Angelica",
            country: "Russia",
            price: 440,
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
          RecommendedPlantCard(
            image: "assets/images/image_3.png",
            title: "Samantha",
            country: "Russia",
            price: 440,
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class RecommendedPlantCard extends StatelessWidget {
  const RecommendedPlantCard(
      {Key key, this.image, this.title, this.country, this.price, this.onPress})
      : super(key: key);

  final String image, title, country;
  final int price;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(
          left: tDefaultPadding,
          top: tDefaultPadding / 2,
          bottom: tDefaultPadding * 2.5),
      width: size.width * 0.4,
      child: GestureDetector(
        onTap: onPress,
        child: Column(
          children: <Widget>[
            Image.asset(image),
            GestureDetector(
              onTap: onPress,
              child: Container(
                padding: EdgeInsets.all(tDefaultPadding / 2),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: tPrimaryColor.withOpacity(0.23),
                    ),
                  ],
                ),
                child: Row(
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '$title\n'.toUpperCase(),
                            style: Theme.of(context).textTheme.button,
                          ),
                          TextSpan(
                            text: '$country\n'.toUpperCase(),
                            style: TextStyle(
                              color: tPrimaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Text(
                      '\$ $price\n',
                      style: TextStyle(color: tPrimaryColor.withOpacity(0.7)),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
