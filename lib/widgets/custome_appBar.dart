import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qurainc_episodes/core/utils/assets_mangers.dart';

import '../core/utils/app_colors.dart';
import '../view/home_screen.dart';

AppBar customeAppBar({required String title, IconData? icon, String? imeg}) {
  return AppBar(
    backgroundColor: Color(0xff169B88),
    // flexibleSpace:Icon(Icons.menu),
    centerTitle: true,
//title:
//SizedBox(
    // height: 45,
    //child:
//),
    actions: [
      Builder(builder: (i) {
        return Container(
          //decoration:Axn ,
          margin: EdgeInsets.only(left: 4, right: 50),
          child: CircleAvatar(
            backgroundImage: AssetImage(imeg!),
          ),
        );
      }),
      Text(
        title,
        style: TextStyle(
            // leadingDistribution: MainAxisAlignment,
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold),
      ),

      Builder(
        builder: (BuildContext context) {
          return Container(
            margin: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
                color: AppColores.secondaryColor,
                borderRadius: BorderRadius.circular(10)),
            width: 50,
            height: 50,
            child: IconButton(
              icon: const Icon(Icons.menu), color: Colors.white,

              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
//              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            ),
          );
        },
      ),
      //Icon(Icons.menu),
    ],
    leading: Builder(
      builder: (BuildContext context) {
        return Container(
          margin: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
              color: AppColores.secondaryColor,
              borderRadius: BorderRadius.circular(10)),
          width: 50,
          height: 50,
          child: IconButton(
            icon: Icon(icon),
            onPressed: () {
              Get.to(HomeScrren());
            },
            //tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          ),
        );
      },
    ),
  );
}
