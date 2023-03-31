import 'package:flutter/material.dart';
import 'package:qurainc_episodes/core/utils/app_colors.dart';


Drawer CostomDrawer  (){


    const drawerHeader = UserAccountsDrawerHeader(
arrowColor:AppColores.primaryColor,

      accountName: Text('User Name'),

      accountEmail: Text('user.name@email.com'),

      currentAccountPicture: CircleAvatar(

        backgroundColor:AppColores.primaryColor,

        child: FlutterLogo(size: 42.0),

      ),
    //  otherAccountsPictures: <Widget>[
      //
      //         CircleAvatar(
      //           backgroundColor: Colors.yellow,
      //
      //           child: Text('A'),
      //         ),
      //
      //         CircleAvatar(
      //           backgroundColor: Colors.red,
      //           child: Text('B'),
      //
      //         )
      //       ],
    );
    final drawerItems = ListView(
//Color:,
      children: <Widget>[
        drawerHeader,

        ListTile(

          title: const Text('الملف الشخصي'),
          onTap: (){},

        ),

        ListTile(
          title: const Text('الاعدادات'),
onTap: (){},
          //
        ),

        ListTile(
          title: const Text('other '),

          onTap: () {},
        ),
      ],
    );

    return  Drawer(
        child: drawerItems,

    );

  }



// <void> means this route returns nothing.


