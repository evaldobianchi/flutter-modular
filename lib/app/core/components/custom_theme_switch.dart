import 'package:flutter/material.dart';
import 'package:flutter_modular/app/app_controller.dart';
import 'package:flutter_modular/main.dart';

class CustomThemeSwitch extends StatelessWidget {
  final AppController appController = getIt.get();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: appController.isDark,
      builder: (context, isDark, child) {
        return Switch(
          value: isDark,
          onChanged: (teste) {
            appController.changeTheme(teste);
          },
        );
      },
    );
  }
}
