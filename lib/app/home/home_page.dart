import 'package:flutter/material.dart';
import 'package:flutter_modular/app/app_controller.dart';
import 'package:flutter_modular/app/core/components/custom_theme_switch.dart';

class HomePage extends StatelessWidget {
  final AppController appController;

  const HomePage({Key? key, required this.appController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Change Dark Theme')),
      body: Center(
        child: CustomThemeSwitch(),
      ),
    );
  }
}
