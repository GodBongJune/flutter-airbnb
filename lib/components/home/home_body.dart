import 'package:air_bnb/components/home/home_body_banner.dart';
import 'package:air_bnb/size.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    final bodyWidth = getBodyWidth(context);

    return Center(
      child: SizedBox(
        width: bodyWidth,
        child: Column(
          children: [
            HomeBodyBanner(),
          ],
        ),
      ),
    );
  }
}
