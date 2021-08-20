// @dart=2.9
class Account {
  String id;
  int overdraft;
  bool active;
  var balance;
  String name;
  String accountNumber;

  Account(
      {this.name,
      this.id,
      this.accountNumber,
      this.active,
      this.balance,
      this.overdraft});

  factory Account.fromJson(Map<String, dynamic> json) {
    return Account(
      id: json['id'] as String,
      overdraft: json['overdraft'] as int,
      active: json['active'] as bool,
      balance: json['balance'],
      name: json['name'] as String,
      accountNumber: json['accountNumber'] as String,
    );
  }
//
// Map<String, dynamic> toJson() {
//   final Map<String, dynamic> data = new Map<String, dynamic>();
//   data['userId'] = this.userId;
//   data['id'] = this.id;
//   data['title'] = this.title;
//   data['body'] = this.body;
//   data['likes'] = this.likes;
//   return data;
// }
}
