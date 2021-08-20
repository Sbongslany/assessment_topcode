// @dart=2.9
import 'package:assessment_topcode/core/enums/viewstate.dart';
import 'package:assessment_topcode/core/models/account.dart';
import 'package:assessment_topcode/core/services/api.dart';
import 'package:assessment_topcode/core/viewmodels/base.model.dart';
import 'package:assessment_topcode/locator.dart';

class AccountModel extends BaseModel {
  Api _api = locator<Api>();

  List<Account> account;

  Future fetchAccounts() async {
    setState(ViewState.Busy);
    account = await _api.getAccounts();
    setState(ViewState.Idle);
  }
}
