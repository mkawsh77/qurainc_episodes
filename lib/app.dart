import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qurainc_episodes/view/splach_screen.dart';
class QurainEpisodes extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    //throw UnimplementedError();
    return  GetMaterialApp(
        debugShowCheckedModeBanner: false,
home: SplachScreen()
    );
  }

}