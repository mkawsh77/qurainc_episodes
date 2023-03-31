import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qurainc_episodes/view/student_screen.dart';
import '../core/utils/app_strings.dart';
import '../view/home_screen.dart';
import '../core/utils/app_colors.dart';
import '../widgets/cos.dart';
import '../widgets/customContainerHomeScreen.dart';
import '../widgets/custome_appBar.dart';
import '../widgets/custome_drawer.dart';

class HomeScrren extends StatelessWidget{
  @override
  //a aa =Get.put(a());
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
        backgroundColor: AppColores.primaryColor,
        endDrawer: CostomDrawer(),
appBar:customeAppBar(title: 'قائمه الرئيسية',icon: Icons.cached_rounded,imeg: 'assets/images/playstore.png'),
        body:   Stack(
          children: [
            // Logo
           
        //  child:  shn(title:"الصفحه الرئيسية" ,icon1: Icons.arrow_back_ios,icon2:Icons.reorder,imeg: 'ImgAssets.logo'),

            Container(
              padding: EdgeInsets.only(left: 10, right: 50),
              margin:
              EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
              height: 45,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.calendar_month,
                    color:AppColores.primaryColor,
                  ),
                  Text(
                      AppStrings.tdat,
                    style: TextStyle(
                        color: AppColores.primaryColor,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),

            // login information
            Container(
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(15)),

                ),
                width: double.infinity,
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .100),

                //left: MediaQuery.of(context).size.width * .06,
                // right: MediaQuery.of(context).size.width * .06,
                // bottom: MediaQuery.of(context).size.height * .05),
                child:Wrap(
                  direction: Axis.horizontal,
                  children: [

                    customContainer(icon:Icons.school_outlined, title: 'الطلاب',go: Stus()),
                    customContainer(icon:Icons.receipt_long, title: 'التقارير',go: 'HomeScreen()'),
                    customContainer(icon:Icons.border_color_sharp, title: 'الحضور والغياب',go: 'HomeScreen()'),
                    customContainer(icon:Icons.severe_cold_outlined, title: 'المتابعة',go: 'HomeScreen()'),

                  ],
                )


            )
          ],));
  }
}
