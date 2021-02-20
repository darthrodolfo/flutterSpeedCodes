import 'package:flutter/material.dart';
import 'package:flutter_speed_code/views/home/widgets/body.dart';
import 'package:flutter_speed_code/views/shared/custom_bottom_navigaton_bar.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBarbuild(),
      body: CustomBody(),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }

  AppBar customAppBarbuild() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset('assets/icons/menu.svg'),
        onPressed: () {},
      ),
    );
  }
}
