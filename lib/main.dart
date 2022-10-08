import 'package:flutter/material.dart';
import 'package:learningapp_login/app/login_handle.dart';

import 'package:micro_core/micro_core.dart';
//import 'package:micro_app_login/micro_app_login.dart';
//import 'package:micro_app_home/micro_app_home.dart';

void main() {
  runApp(RunApp());
}

class RunApp extends StatelessWidget with LearningApp {

  @override
  Widget build(BuildContext context) {
    super.registerRouters();

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorKey: navigatorKey,
      onGenerateRoute: super.generateRoute,
      initialRoute: '/login',
    );
  }

  @override
  Map<String, WidgetBuilderArgs> get baseRoutes => {};

  @override
  List<MicroApp> get microApps => [
    LoginHandle()
 //   MicroAppLoginResolver(),
  //  MicroAppHomeResolver(),
  ];
}