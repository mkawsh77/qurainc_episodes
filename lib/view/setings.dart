import 'package:flutter/material.dart';
import 'package:qurainc_episodes/core.utiles/app_colors.dart';

import '../core/utils/app_colors.dart';
import '../widgets/custome_appBar.dart';
import '../widgets/custome_container_follow_up.dart';
import '../widgets/custome_drawer.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColores.primaryColor,
      endDrawer: CostomDrawer(),
      appBar: customeAppBar(
          title: 'الاعدادات',
          icon: Icons.cached_rounded,
          imeg: 'assets/images/playstore.png'),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12), topRight: Radius.circular(12)),
              ),
              width: double.infinity,
              height: 550,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 230.0,
                      top: 20,
                    ),
                    child: Text(
                      'الاعدادات العامة',
                      textAlign: TextAlign.right,
                      
                      style: TextStyle(
                        
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryColor),
                    ),
                  ),
                  custom_container(Icons.person),
                  custom_container(Icons.lock),
                  
                  Padding(
                    padding: const EdgeInsets.only(left: 210),
                    child: Text(
                      'مزامنة البيانات',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryColor),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 192, 89, 89),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12)),
                    ),
                    //
                    margin: EdgeInsets.only(left: 10, right: 10),
                    height: 50,
                    padding: EdgeInsets.only(left: 20, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))),
                            child: Text(' 90 يوم   ')),
                        Padding(padding: const EdgeInsets.only(left: 50)),
                        (Text("جميع البيانات",
                        textAlign: TextAlign.right,
                          style: TextStyle(fontSize: 20),
                        )),
                        Icon(Icons.electric_moped)
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 192, 89, 89),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12)),
                    ),
                    //
                    margin: EdgeInsets.only(left: 10, right: 10),
                    height: 50,
                    padding: EdgeInsets.only(left: 20, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))),
                            child: Text(' 90 يوم   ')),
                        Padding(padding: const EdgeInsets.only(left: 50)),
                        (Text(
                          'بيانات المتابعه والمواضبه',
                          style: TextStyle(fontSize: 20),
                        )),
                        Icon(Icons.electric_moped)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 250),
                    child: Text(
                      'التنبيهات ',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryColor),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 192, 89, 89),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12)),
                    ),
                    //
                    margin: EdgeInsets.only(left: 10, right: 10),
                    height: 50,
                    padding: EdgeInsets.only(left: 20, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 20,
                          child: Switch(value: true, onChanged: (val) {}),
                        ),
                        Padding(padding: const EdgeInsets.only(left: 50)),
                        (Text(
                          'إعلانات المدرسة',
                          style: TextStyle(fontSize: 20),
                        )),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 192, 89, 89),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12)),
                    ),
                    //
                    margin: EdgeInsets.only(left: 10, right: 10),
                    height: 50,
                    padding: EdgeInsets.only(left: 20, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Switch(value: true, onChanged: (val) {}),
                        ),
                        Padding(padding: const EdgeInsets.only(right: 100)),
                        (Text(
                          'الاخبار',
                          style: TextStyle(fontSize: 20),
                        )),
                        Icon(Icons.electric_moped)
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container custom_container(
    IconData icon,
  ) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey,
        // borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
      //
      margin: EdgeInsets.only(left: 10, right: 10),
      height: 50,
      padding: EdgeInsets.only(left: 20, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.arrow_back_ios),
          Padding(padding: const EdgeInsets.only(left: 50)),
          (Text(
            'تغير كلمة المرور',
            style: TextStyle(fontSize: 20),
          )),
          Icon(
            icon,
            size: 30,
          )
        ],
      ),
    );
  }
}
