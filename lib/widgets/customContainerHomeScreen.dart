import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qurainc_episodes/view/home_screen.dart';

import '../core/utils/app_colors.dart';
import '../view/Student.dart';
import '../view/student_screen.dart';

  InkWell customContainer(
      {required IconData icon, required String title, required  go}) {
    return InkWell(
      onTap: () {
        Get.to(go);

        //Color:Colors.white;
        print("ahmed");
      },
      child: Container(
        height: 90,
        width: 90,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          color: AppColores.primaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Icon(size: 50, icon,color: AppColores.white,),
            Text(title,style: TextStyle(color: AppColores.white),

            )
          ],
        ),
      ),
    );
  }

