import 'package:flutter/material.dart';
import 'package:flutter_modular/app/app_controller.dart';
import 'package:flutter_modular/app/app_widget.dart';
import 'package:flutter_modular/app/interfaces/local_storage_interface.dart';
import 'package:flutter_modular/app/models/appconfig_model.dart';
import 'package:flutter_modular/app/services/shared_preferences_service.dart';
import 'package:get_it/get_it.dart';

import 'app/viewmodels/change_theme_viewmodel.dart';

void main() {
  setup();
  runApp(const AppWidget());
}

final getIt = GetIt.instance;

void setup() {
  WidgetsFlutterBinding.ensureInitialized();
  getIt.registerSingleton<ILocalStorage>(SharedPreferencesService());
  getIt.registerSingleton(AppconfigModel());
  getIt.registerSingleton(ChangeThemeViewModel(getIt.get()));
  getIt.registerSingleton(AppController(getIt.get()));
  
}
