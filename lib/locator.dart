// @dart=2.9
import 'package:assessment_topcode/core/services/api.dart';
import 'package:get_it/get_it.dart';

import 'core/viewmodels/account.model.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => Api());

  locator.registerFactory(() => AccountModel());
}
