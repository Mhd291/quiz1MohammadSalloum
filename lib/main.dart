import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:quiz_mohammad_salloum/solution/q3/show_ids/show_Ids_screen.dart';
import 'package:quiz_mohammad_salloum/solution/q3/show_user/binding.dart';
import 'package:quiz_mohammad_salloum/solution/q3/show_user/show_user_screen.dart';

import 'solution/q2/show_list_screen.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light));
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Cairo",
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/showList',
      getPages: [
        GetPage(name: '/showList', page: () => ShowList()),
        GetPage(name: '/showIDs', page: () => ShowIDs()),
        GetPage(name: '/showUser', page: () => ShowUser(),binding: ShowUserBinding()),
      ],
      // builder: EasyLoading.init(),
    );
  }
}
