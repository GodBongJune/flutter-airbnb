import 'package:air_bnb/components/home/home_header_appbar.dart';
import 'package:air_bnb/components/home/home_header_form.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/background.jpeg"), fit: BoxFit.cover)),
      child: Column(
        children: [
          HomeHeaderAppBar(),
          HomeHeaderForm(),
        ],
      ),
    );
  }
}
