import 'package:flutter/material.dart';
import 'package:music_player_ui_app/colors.dart';

class AlbumArt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.0,
      width: 220.0,
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: darkPrimaryColor,
            offset: Offset(20, 8),
            spreadRadius: 3,
            blurRadius: 25,
          ),
          BoxShadow(
            color: Colors.white,
            offset: Offset(-3, -4),
            spreadRadius: -2,
            blurRadius: 20,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          'assets/images/img.png',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
