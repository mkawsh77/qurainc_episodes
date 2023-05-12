import 'package:flutter/material.dart';
import 'package:qurainc_episodes/core.utiles/app_colors.dart';

import '../widgets/custome_container_follow_up.dart';
//import 'package:qurainc_episodes/widegs/custome_container_follow_up.dart';

class FollowUpStudent extends StatefulWidget {
  const FollowUpStudent({super.key});

  @override
  State<StatefulWidget> createState() {
    return FollowUpStudentState();
  }
}

class FollowUpStudentState extends State<FollowUpStudent> {
  var selectedSueers1 = "الفاتحة";
  var selectedSueers2 = "الفاتحة";
  var selectedSueersNum2 = 1;
  var selectedSueersNum1 = 1;
  var selectedSueersMark = 15.0;
  var text = "اخر الحفظ  ";
  Color saveColor = AppColors.greenColor;
  Color installColor = Color(0xffdcdcdc);
  Color followColor = Color(0xffdcdcdc);
  IconData? saveIcone = Icons.book;
  IconData? installIcone;
  IconData? followIcone;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        endDrawer: Drawer(),
        body: Container(
          padding: EdgeInsets.only(top: 24),
          color: AppColors.primaryColor,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(10)),
                    width: 50,
                    height: 50,
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 70),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/playstore.png"),
                    ),
                  ),
                  Text(
                    "المتابعة",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 70),
                    decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(10)),
                    height: 50,
                    width: 50,
                    child: Icon(
                      Icons.reorder,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(left: 10, right: 50),
                margin:
                    EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.book,
                      color: AppColors.yellowColor,
                    ),
                    Text(
                      "الاربعاء 14 مارس 2023 / 16 شعبان 1444",
                      style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20))),
                width: double.infinity,
                height: 596,
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Card(
                      child: Container(
                        margin: EdgeInsets.all(5),
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                              decoration: BoxDecoration(
                                  color: AppColors.yellowColor,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      topLeft: Radius.circular(10))),
                              child: Text(
                                "السجل",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                              margin: EdgeInsets.only(left: 5, right: 20),
                              decoration: BoxDecoration(
                                  color: AppColors.primaryColor,
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(10),
                                      topRight: Radius.circular(10))),
                              child: Text(
                                "الملف",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ),
                            Text("عبدالرحمان بن بتقة",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                            Container(
                                margin: EdgeInsets.only(left: 25),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage("assets/images/playstore.png"),
                                ))
                          ],
                        ),
                      ),
                    ),
                    Container(
                      // margin: EdgeInsets.only(
                      //     right: 15, left: 15, ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          MaterialButton(
                              padding: EdgeInsets.all(0),
                              child: CustomeContainer(
                                  content: "اخر التثبيت ",
                                  backgroundColor: installColor,
                                  icon: installIcone),
                              onPressed: () {
                                setState(() {
                                  installIcone = Icons.book;
                                  followIcone = null;
                                  saveIcone = null;
                                  text = "اخر التثبيت ";
                                  saveColor = Color(0xffdcdcdc);
                                  followColor = Color(0xffdcdcdc);
                                  installColor = AppColors.greenColor;
                                });
                              }),
                          MaterialButton(
                              padding: EdgeInsets.all(0),
                              child: CustomeContainer(
                                  content: "اخر المراجعة ",
                                  backgroundColor: followColor,
                                  icon: followIcone),
                              onPressed: () {
                                setState(() {
                                  installIcone = null;
                                  followIcone = Icons.book;
                                  saveIcone = null;
                                  text = "اخر المراجعة ";
                                  saveColor = Color(0xffdcdcdc);
                                  followColor = AppColors.greenColor;
                                  installColor = Color(0xffdcdcdc);
                                });
                              }),
                          MaterialButton(
                              padding: EdgeInsets.all(0),
                              child: CustomeContainer(
                                  content: "اخر الحفظ  ",
                                  backgroundColor: saveColor,
                                  icon: Icons.book),
                              onPressed: () {
                                setState(() {
                                  installIcone = null;
                                  followIcone = null;
                                  saveIcone = Icons.book;
                                  text = "اخر الحفظ  ";
                                  saveColor = AppColors.greenColor;
                                  followColor = Color(0xffdcdcdc);
                                  installColor = Color(0xffdcdcdc);
                                });
                              }),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            topLeft: Radius.circular(10)),
                      ),
                      height: 100,
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 5, right: 5),
                            decoration: BoxDecoration(
                              color: AppColors.greenColor,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  topLeft: Radius.circular(10)),
                            ),
                            height: 35,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "الاحد 14 مارس 2023 / 16 شعبان 1444",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      text,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Icon(
                                      Icons.book,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    CustomeContainer22(ContainerHeight: 35,RadiusTopLeft: 10,RadiusBottomLeft: 10,MarginRight: 5,DropdownButton1:DropdownButton(
                                          
                                          iconSize: 0,
                                          items:souarsMark
                                              .map((e) => DropdownMenuItem(
                                                    child: Text("$e"),
                                                    value: e,
                                                  ))
                                              .toList(),
                                          onChanged: (val) {
                                            setState(() {
                                              selectedSueersMark = val!;
                                            });
                                          },
                                          value: selectedSueersMark,
                                        ) ),
                                    Text(
                                      ":العلامة",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    CustomeContainer22(ContainerHeight: 35,DropdownButton1:DropdownButton(
                                          
                                          iconSize: 0,
                                          items:souarsNum
                                              .map((e) => DropdownMenuItem(
                                                    child: Text("$e"),
                                                    value: e,
                                                  ))
                                              .toList(),
                                          onChanged: (val) {
                                            setState(() {
                                              selectedSueersNum2 = val!;
                                            });
                                          },
                                          value: selectedSueersNum2,
                                        ) ),
                                    CustomeContainer22(MarginRight: 5 ,DropdownButton1:DropdownButton(
                                          iconSize: 0,
                                          items:souars
                                              .map((e) => DropdownMenuItem(
                                                    child: Text("$e"),
                                                    value: e,
                                                  ))
                                              .toList(),
                                          onChanged: (val) {
                                            setState(() {
                                              selectedSueers2 = val!;
                                            });
                                          },
                                          value: selectedSueers2,
                                        ) ),
                                    
                                    Text(
                                      ": الى",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    CustomeContainer22(ContainerHeight: 35,DropdownButton1:DropdownButton(
                                          
                                          iconSize: 0,
                                          items:souarsNum
                                              .map((e) => DropdownMenuItem(
                                                    child: Text("$e"),
                                                    value: e,
                                                  ))
                                              .toList(),
                                          onChanged: (val) {
                                            setState(() {
                                              selectedSueersNum1 = val!;
                                            });
                                          },
                                          value: selectedSueersNum1,
                                        ) ),
                                    
                                    CustomeContainer22(RadiusTopRight: 10,RadiusBottomRight: 10,MarginRight: 5 ,DropdownButton1:DropdownButton(
                                          // isDense: false,
                                          iconSize: 0,
                                          items:souars
                                              .map((e) => DropdownMenuItem(
                                                    child: Text("$e"),
                                                    value: e,
                                                  ))
                                              .toList(),
                                          onChanged: (val) {
                                            setState(() {
                                              selectedSueers1 = val!;
                                            });
                                          },
                                          value: selectedSueers1,
                                        ) ),
                                    Text(
                                      ": من",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: AppColors.primaryColor, width: .8),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            topLeft: Radius.circular(10)),
                      ),
                      height: 155,
                      child: Column(
                        children: [
                          Container(
                            // padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  topLeft: Radius.circular(10)),
                            ),
                            height: 37,
                            padding: EdgeInsets.only(left: 100),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CustomeContainer3(
                                    content: "إضافة  ",
                                    backgroundColor: AppColors.yellowColor,
                                    icon: Icons.add_to_photos),
                                CustomeContainer3(
                                    content: "حذف البيانات  ",
                                    backgroundColor: AppColors.redColor,
                                    icon: Icons.delete),
                                CustomeContainer3(
                                    content: "الحفظ  ",
                                    backgroundColor: AppColors.primaryColor,
                                    icon: Icons.book)
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 50),
                            child: Row(
                              children: [
                                CustomeContainer22(ContainerHeight: 32,ContainerWidth: 120,RadiusTopLeft: 10,RadiusBottomLeft: 10,DropdownButton1:DropdownButton(
                                          
                                          iconSize: 0,
                                          items:souarsNum
                                              .map((e) => DropdownMenuItem(
                                                    child: Text("$e"),
                                                    value: e,
                                                  ))
                                              .toList(),
                                          onChanged: (val) {
                                            setState(() {
                                              selectedSueersNum1 = val!;
                                            });
                                          },
                                          value: selectedSueersNum1,
                                        ) ),
                                CustomeContainer22(ContainerHeight: 32,ContainerWidth: 120,RadiusTopRight: 10,RadiusBottomRight: 10,MarginRight: 5 ,DropdownButton1:DropdownButton(
                                          // isDense: false,
                                          iconSize: 0,
                                          items:souars
                                              .map((e) => DropdownMenuItem(
                                                    child: Text("$e"),
                                                    value: e,
                                                  ))
                                              .toList(),
                                          onChanged: (val) {
                                            setState(() {
                                              selectedSueers1 = val!;
                                            });
                                          },
                                          value: selectedSueers1,
                                        ) ),
                                Container(
                                  margin: EdgeInsets.only(left: 25),
                                  child: Text(
                                    ": من",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w900),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 5),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.delete_forever,
                                  color: AppColors.redColor,
                                  size: 30,
                                ),
                                CustomeContainer22(ContainerHeight: 32,ContainerWidth: 120,RadiusTopLeft: 10,RadiusBottomLeft: 10,marginLeft: 15,DropdownButton1:DropdownButton(
                                          
                                          iconSize: 0,
                                          items:souarsNum
                                              .map((e) => DropdownMenuItem(
                                                    child: Text("$e"),
                                                    value: e,
                                                  ))
                                              .toList(),
                                          onChanged: (val) {
                                            setState(() {
                                              selectedSueersNum2 = val!;
                                            });
                                          },
                                          value: selectedSueersNum2,
                                        ) ),
                                CustomeContainer22(ContainerHeight: 32,ContainerWidth: 120,RadiusTopRight: 10,RadiusBottomRight: 10,MarginRight: 5 ,DropdownButton1:DropdownButton(
                                          // isDense: false,
                                          iconSize: 0,
                                          items:souars
                                              .map((e) => DropdownMenuItem(
                                                    child: Text("$e"),
                                                    value: e,
                                                  ))
                                              .toList(),
                                          onChanged: (val) {
                                            setState(() {
                                              selectedSueers2 = val!;
                                            });
                                          },
                                          value: selectedSueers2,
                                        ) ),
                                Container(
                                  margin: EdgeInsets.only(left: 25),
                                  child: Text(
                                    ": الى",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w900),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 52),
                            child: Row(
                              children: [
                                CustomeContainer22(
                                  ContainerWidth: 245,
                                  ContainerHeight: 32,
                                  RadiusTopLeft: 10,
                                  RadiusTopRight: 10,
                                  RadiusBottomLeft: 10,
                                  RadiusBottomRight: 10,
                                  DropdownButton1: Text("عرض حسن للمقرر  ${selectedSueersMark} ")),
                                
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Text(
                                    ": العلامة",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w900),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                        // borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),
                        border: Border(
                            left: BorderSide(
                                color: AppColors.primaryColor, width: 1),
                            // top: BorderSide(color: AppColors.primaryColor,width: 1,),
                            right: BorderSide(
                                color: AppColors.primaryColor, width: 1),
                            bottom: BorderSide.none),
                      ),
                      height: 85,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  topLeft: Radius.circular(10)),
                            ),
                            height: 37,
                            padding: EdgeInsets.only(right: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomeContainer3(
                                    content: "المراجعة  ",
                                    backgroundColor: AppColors.primaryColor,
                                    icon: Icons.book)
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  " لإضافة متابعة  ",
                                  style: TextStyle(
                                      color: AppColors.yellowColor,
                                      fontWeight: FontWeight.w900),
                                ),
                                CustomeContainer3(
                                    content: "إضافة  ",
                                    backgroundColor: AppColors.yellowColor,
                                    icon: Icons.add_to_photos),
                                Text(
                                  "   إضغط على زر",
                                  style: TextStyle(
                                      color: AppColors.yellowColor,
                                      fontWeight: FontWeight.w900),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      decoration: BoxDecoration(
                        color: AppColors.yellowColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 40,
                      width: double.infinity - 10,
                      child: Center(
                          child: Text(
                        "حفظ التغييرات",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w900),
                      )),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      height: 55,
                      margin: EdgeInsets.only(top: 10, right: 15, left: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.settings,
                            color: AppColors.whiteColor,
                            size: 30,
                          ),
                          Icon(
                            Icons.blur_circular,
                            color: AppColors.whiteColor,
                            size: 30,
                          ),
                          Icon(
                            Icons.home,
                            color: Colors.white,
                            size: 30,
                          ),
                          Icon(
                            Icons.message,
                            color: AppColors.whiteColor,
                            size: 30,
                          ),
                          Icon(
                            Icons.notification_important,
                            color: AppColors.whiteColor,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

String selectsours = "";
final souarslecet = TextEditingController();
List<String> souars = [
  "الفاتحة",
  "البقرة",
  "الاعمران",
  "النساء",
  "المائدة",
  "الانعام",
  "الاعراف",
  "الانفال",
  "التوبة",
  "يونس",
  "هود",
  "يوسف",
  "الرعد",
  "ابراهيم",
];
String selectsoursNum = "";
final souarslecetNum = TextEditingController();
List<int> souarsNum = [
  1,2,3,4,5,6,7,8,9,10
];
String selectsoursMark = "";
final souarslecetMark = TextEditingController();
List<double> souarsMark = [
  11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0
];
