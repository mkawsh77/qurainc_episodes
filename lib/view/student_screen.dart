import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:qurainc_episodes/core/utils/app_colors.dart';
import 'package:qurainc_episodes/datastudent/list_data_student.dart';
import '../core/utils/app_strings.dart';
import '../widgets/custome_appBar.dart';
import 'package:intl/intl.dart';

import '../widgets/custome_drawer.dart';
class Stus extends StatefulWidget{
  @override

  State<StatefulWidget> createState() =>_Stus();
}
class _Stus  extends State<Stus>{
  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    //
    ///throw UnimplementedError();
    return
            Scaffold(
              backgroundColor: AppColores.primaryColor,
              endDrawer: CostomDrawer(),
              appBar:
              customeAppBar(title: 'قائمه الطلاب',icon: Icons.arrow_back_ios,imeg: 'assets/images/playstore.png'),
            body:
            Container(
                child: //padding: const EdgeInsets.all(8.0),
                Column(
                  children: [
                    Row(
                      children: [
                      ],
                    ) ,
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
                          Text(AppStrings.tdat
                          ,
                            style: TextStyle(
                                color: AppColores.primaryColor,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Container(
                        height: 450,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.all(Radius.circular(15)),

                        ),
                        width: 350,
                        child:
                      GridView.count(
                      primary: false,
                        crossAxisCount: 2,
                          crossAxisSpacing: 10.0,
                          padding: const EdgeInsets.all(2),
                          mainAxisSpacing: 0.10,
                        children:
                        List.generate(ListStudent.length, (i) {
                          return  GridTile(
                            child:
                            Container(

                              padding:EdgeInsets.only(top: 90),
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                                image: DecorationImage(image: AssetImage(ListStudent[i].imeg))
                              )
                              ,
                          child:
                          Container(
                            height: 15,
                              width: 30,
                              decoration: BoxDecoration(

                                color: Colors.green.withOpacity(0.5),
                                borderRadius: const BorderRadius.all(Radius.circular(10)),

                              ),

                            alignment: Alignment.center,
                            child: Text(ListStudent[i].name,
                                style:  TextStyle(fontSize: 20,
                                color: AppColores.white)),
                          ),
                        ),
                      );
                        }
    ))


    ),
                  ],
                ),
              ),
            );
  }
  }