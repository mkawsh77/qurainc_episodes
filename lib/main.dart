import 'package:flutter/material.dart';
import 'package:qurainc_episodes/view/report.dart';
import 'package:qurainc_episodes/view/setings.dart';
import 'app.dart';
import 'view/follow_up_students.dart';
import 'view/home_screen.dart';
import 'view/splach_screen.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Report(),
    );
  }
}
