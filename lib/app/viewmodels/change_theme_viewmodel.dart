import 'package:flutter_modular/app/interfaces/local_storage_interface.dart';
import 'package:flutter_modular/app/models/appconfig_model.dart';

class ChangeThemeViewModel {
  final ILocalStorage localStorage;
  final AppconfigModel appconfigModel = AppconfigModel();

  ChangeThemeViewModel(this.localStorage);

  changeTheme(isDark) {
    appconfigModel.darkTheme.value = isDark;
    localStorage.put('isDark', isDark);
  }

  Future init() async {
    localStorage
        .get('isDark')
        .then((isDark) => appconfigModel.darkTheme.value = isDark);
  }
}
