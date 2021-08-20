//@dart=2.9
import 'package:assessment_topcode/core/models/account.dart';
import 'package:assessment_topcode/ui/views/account.view.details.dart';
import 'package:assessment_topcode/ui/views/accounts.view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Routers {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => AccountsView());
      case 'accountDetails':
        var account = settings.arguments as Account;
        return MaterialPageRoute(
            builder: (_) => AccountViewDetails(
                  account: account,
                ));
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No Route defines for ${settings.name}'),
                  ),
                ));
    }
  }
}
