import 'package:event_app/routes.dart';
import 'package:event_app/screens/init_screen/init.dart';
import 'package:event_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Events Updates',
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.leftToRightWithFade,
      theme: theme(),
      initialRoute: InitScreen.routeName,
      routes: routes
    );
  }
}

