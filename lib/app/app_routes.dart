import 'package:flutter_modular/app/login/login_page.dart';

import '../main.dart';
import 'app_controller.dart';
import 'home/home_page.dart';

get appRoutes => {
      '/': (context) => LoginPage(),
      '/home': (context) => HomePage(appController: getIt.get<AppController>()),
    };
