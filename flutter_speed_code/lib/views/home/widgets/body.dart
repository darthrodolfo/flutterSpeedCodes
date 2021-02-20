import 'package:flutter/material.dart';
import 'package:flutter_speed_code/views/home/widgets/featured_plants.dart';
import 'package:flutter_speed_code/views/home/widgets/header.dart';
import 'package:flutter_speed_code/views/home/widgets/recommended_plants.dart';
import 'package:flutter_speed_code/views/home/widgets/section_header.dart';

class CustomBody extends StatelessWidget {
  const CustomBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          SectionHeader(title: 'Recomended', onPressed: () {}),
          RecommendedPlants(),
          SectionHeader(title: 'Featured Plants', onPressed: () {}),
          FeaturedPlants(),
        ],
      ),
    );
  }
}
