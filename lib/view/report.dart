import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:qurainc_episodes/generated/assets.dart';
import 'package:qurainc_episodes/widgets/custome_appBar.dart';

import '../widgets/custome_drawer.dart';

class Report extends StatelessWidget {
  const Report({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: CostomDrawer(),
      appBar: customeAppBar(
          title: 'التقارير',
          icon: Icons.arrow_back_ios,
          imeg: 'assets/images/playstore.png'),
      // appBar: AppBar(
      //   backgroundColor: Color(0XFF169B88),
      //   title: Row(
      //     children: [
      //       Icon(Icons.home),
      //       Icon(Icons.home),
      //       Text("لتقارير"),
      //       Icon(Icons.home)
      //     ],
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          //height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(10)),
              Center(
                child: CircleAvatar(
                  radius: 100.0,
                  backgroundImage: AssetImage(
                    'assets/images/playstore.png',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 250, bottom: 10),
                margin: EdgeInsets.only(left: 40),
                child: Column(
                  children: [
                    MaterialButton(
                      color: Color(0XFF169B88),
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 80),
                      child: Text("تقريرانجاز الطلاب",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.bold)),
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                margin: EdgeInsets.only(left: 40),
                child: Column(
                  children: [
                    MaterialButton(
                      color: Color(0XFF169B88),
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 70),
                      child: Text("منحني تطور الطالب",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.bold)),
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                margin: EdgeInsets.only(left: 40),
                child: Column(
                  children: [
                    MaterialButton(
                      color: Color(0XFF169B88),
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 90),
                      child: Text("تقرير المواظبة",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.bold)),
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                margin: EdgeInsets.only(left: 40),
                child: Column(
                  children: [
                    MaterialButton(
                      color: Color(0XFF169B88),
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 90),
                      child: Text("تقرير الحلقات",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.bold)),
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                margin: EdgeInsets.only(left: 40),
                child: Column(
                  children: [
                    MaterialButton(
                      color: Color(0XFF169B88),
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 90),
                      child: Text("سجل الطالب",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.bold)),
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.draw, color: Color(0XFF169B88)),
                  Icon(Icons.search, color: Color(0XFF169B88)),
                  Icon(Icons.home_filled, color: Color(0XFF169B88)),
                  Icon(Icons.local_offer_sharp, color: Color(0XFF169B88)),
                  Icon(Icons.account_circle_rounded, color: Color(0XFF169B88)),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
