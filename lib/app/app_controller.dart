import 'package:flutter/foundation.dart';
import 'package:flutter_modular/app/viewmodels/change_theme_viewmodel.dart';

class AppController {
  final ChangeThemeViewModel viewModel;

  AppController(this.viewModel) {
    viewModel.init();
  }

  ValueListenable<bool> get isDark => viewModel.appconfigModel.darkTheme;

  void changeTheme(bool isDark) {
    viewModel.changeTheme(isDark);
  }
}
