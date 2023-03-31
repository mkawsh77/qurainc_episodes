import 'dart:async';
import 'package:flutter/material.dart';
import 'package:qurainc_episodes/core/utils/assets_mangers.dart';
import 'package:get/get.dart';
import 'login_screen.dart';

import 'home_screen.dart';
class SplachScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>_StateSplachScreen();
}
class _StateSplachScreen  extends State<SplachScreen >{
  initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds:3 ), () {
      Get.to(HomeScrren());
    });
  }
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    //throw UnimplementedError();
    return Container(
color: Colors.white,
      child: Image.asset(ImgAssets.logo),
    );
  }

  }


