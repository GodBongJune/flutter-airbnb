import 'package:air_bnb/constants.dart';
import 'package:air_bnb/size.dart';
import 'package:air_bnb/styles.dart';
import 'package:flutter/material.dart';

class HomeHeaderAppBar extends StatelessWidget {
  const HomeHeaderAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildAppBarLogo(),
        _buildAppBarMenu(),
      ],
    );
  }

  Widget _buildAppBarLogo() {
    return Padding(
      padding: const EdgeInsets.all(gap_m),
      child: Row(
        children: [
          Image.asset(
            "assets/logo.png",
            width: 30,
            height: 30,
            color: kAccentColor,
          ),
          SizedBox(width: gap_s),
          Text("RoomOfAll", style: h5(mColor: Colors.white)),
        ],
      ),
    );
  }

  Widget _buildAppBarMenu() {
    return Padding(
      padding: const EdgeInsets.all(gap_m),
      child: Row(
        children: [
          Text("회원가입", style: subtitle1(mColor: Colors.white)),
          SizedBox(width: gap_m),
          Text("로그인", style: subtitle1(mColor: Colors.white)),
        ],
      ),
    );
  }
}
