// @dart=2.9
import 'package:assessment_topcode/core/models/account.dart';
import 'package:assessment_topcode/ui/shared/app.colors.dart';
import 'package:assessment_topcode/ui/shared/text.styles.dart';
import 'package:assessment_topcode/ui/shared/ui.helpers.dart';
import 'package:assessment_topcode/ui/widgets/text.decription.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountViewDetails extends StatelessWidget {
  final Account account;
  const AccountViewDetails({Key key, this.account}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(account.name),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 300),
                      Text(
                        '${account.name}',
                        style: detailsHeaderStyle,
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        '${account.accountNumber}',
                        style: detailsSubStyle,
                        textAlign: TextAlign.right,
                      ),
                      Divider(color: Colors.white),
                      UIHelper.verticalSpaceMedium(),
                      Divider(color: Colors.white),
                      // SizedBox(height: 32),
                      Text(
                        'Balance',
                        style: fontSizeStyle,
                      ),
                      TextDescription(
                        name: '${account.balance}',
                      ),
                      UIHelper.verticalSpaceSmall(),
                      Text(
                        'Overdraft',
                        style: fontSizeStyle,
                      ),
                      TextDescription(
                        name: '${account.overdraft}',
                      ),
                      UIHelper.verticalSpaceSmall(),
                      Text(
                        'Active',
                        style: fontSizeStyle,
                      ),
                      TextDescription(
                        name: '${account.active}',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
