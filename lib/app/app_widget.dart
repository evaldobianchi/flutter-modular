import 'package:flutter/material.dart';
import 'package:flutter_modular/app/app_controller.dart';
import 'package:flutter_modular/app/app_routes.dart';
import 'package:flutter_modular/main.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
        valueListenable: getIt.get<AppController>().isDark,
        builder: (context, isDark, child) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
              brightness: isDark ? Brightness.dark : Brightness.light,
            ),
            initialRoute: '/',
            routes: appRoutes,
          );
        });
  }
}
