import 'package:flutter/material.dart';
import 'package:qurainc_episodes/core/utils/app_colors.dart';
import 'package:qurainc_episodes/core/utils/assets_mangers.dart';
Container shn ({required String title, IconData? icon1, String? imeg,IconData? icon2}){
//shn(title: ,icon1: Icons.arrow_back_ios,icon2:Icons.reorder)
  return Container(
    child:Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
                color: AppColores.white,
                borderRadius: BorderRadius.circular(10)),
            width: 50,
            height: 50,
            child: Icon(
             icon1,
              color: Colors.white,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 70),
            child: CircleAvatar(
              backgroundImage: AssetImage("imeg"),
            ),
          ),
          Text(title
         ,
            style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          Container(
            margin: EdgeInsets.only(left: 70),
            decoration: BoxDecoration(
                color: AppColores.white,
                borderRadius: BorderRadius.circular(10)),
            height: 50,
            width: 50,
            child: Icon(
              icon2,
              color: Colors.white,
            ),
          ),
        ]
    ),
  );



}