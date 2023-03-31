import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qurainc_episodes/core/utils/assets_mangers.dart';
import 'package:qurainc_episodes/view/home_screen.dart';

import '../view/student_screen.dart';

InkWell cust(
    {required IconData icon, required String title, required String go}) {
  return InkWell(
    onTap: () {
      Get.to(go);
      Color:
      Colors.black;
      print("ahmed");
    },
    child: Container(
      height: 150,
      width: 150,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.only(top: 10),

      decoration: BoxDecoration(

        color:Colors.white ,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
Container(
  child: Wrap(
    children: [  Image.asset(ImgAssets.logo,height:100,),
      Text(title)],
  ),
)

        ],
      ),
    ),
  );
}

