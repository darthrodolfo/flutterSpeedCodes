import 'package:flutter/material.dart';
import 'package:flutter_speed_code/views/home/widgets/header.dart';

class CustomBody extends StatelessWidget {
  const CustomBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderWithSearchBox(
            size: size,
          )
        ],
      ),
    );
  }
}
