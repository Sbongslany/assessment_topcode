// @dart=2.9
import 'package:assessment_topcode/locator.dart';
import 'package:assessment_topcode/ui/router.dart';
import 'package:assessment_topcode/ui/views/accounts.view.dart';
import 'package:flutter/material.dart';

void main() {
  setupLocator();
  runApp(BankAccountApp());
}

class BankAccountApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'topCode Assessment',
      theme: ThemeData.dark(),
      initialRoute: '/',
      onGenerateRoute: Routers.generateRoute,
    );
  }
}
