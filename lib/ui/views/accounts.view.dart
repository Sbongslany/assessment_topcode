//@dart=2.9
//import 'dart:js';

import 'package:assessment_topcode/core/enums/viewstate.dart';
import 'package:assessment_topcode/core/models/account.dart';
import 'package:assessment_topcode/core/viewmodels/account.model.dart';
import 'package:assessment_topcode/ui/shared/app.colors.dart';
import 'package:assessment_topcode/ui/shared/text.styles.dart';
import 'package:assessment_topcode/ui/shared/ui.helpers.dart';
import 'package:assessment_topcode/ui/views/base.view.dart';
import 'package:assessment_topcode/ui/widgets/account.list.item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountsView extends StatelessWidget {
  const AccountsView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<AccountModel>(
      onModelReady: (model) => model.fetchAccounts(),
      builder: (context, model, child) => Scaffold(
          // backgroundColor: backgroundColor,
          body: model.state == ViewState.Busy
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  UIHelper.verticalSpaceLarge(),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Center(
                      child: Text(
                        'Account Details',
                        style: headerStyle,
                      ),
                    ),
                  ),
                  UIHelper.verticalSpaceSmall(),
                  Expanded(child: getAccountUi(model.account)),
                ])),
    );
  }

  Widget getAccountUi(List<Account> accounts) => ListView.builder(
        itemCount: accounts.length,
        itemBuilder: (context, index) => AccountListItem(
          account: accounts[index],
          onTap: () {
            Navigator.pushNamed(context, 'accountDetails',
                arguments: accounts[index]);
          },
        ),
      );
}
