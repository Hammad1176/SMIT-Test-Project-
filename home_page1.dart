import 'dart:io';

import 'List_user.dart';
import 'logout_user.dart';

void homePage(String name) {
  print("cash with draw please press 1");
  print("cash deposit please press 2 ");
  String getUserInput = stdin.readLineSync()!;
  UserList userList = UserList();
  if (getUserInput == "1") {
    // UserList userList = UserList();
    print("please enter withdraw amount");
    num withDraw = int.parse(stdin.readLineSync()!);
    withDrawAmount(withDraw, name, userList);
  } else if (getUserInput == "2") {
    // UserList userList = UserList();
    print("please enter deposit amount");
    num cashDeposit = int.parse(stdin.readLineSync()!);
    cashDepositAccount(cashDeposit, name, userList);
  } else {
    userLogout();
  }
}

void cashDepositAccount(num cashDeposit, String name, UserList userList) {
  final data = userList.list.firstWhere((i) => i["user"] == name);
  if (data["balance"] >= cashDeposit) {
    data["balance"] = data["balance"] + cashDeposit;
    print("transaction successfull your credit is $cashDeposit");
    print("======================");
    print("$name your total balance is ${data["balance"]}");
    userLogout();
  }
}

void withDrawAmount(num value, String name, UserList userList) {
  final data = userList.list.firstWhere((i) => i["user"] == name);
  if (data["balance"] >= value) {
    data["balance"] = data["balance"] - value;
    print("transaction successfull your debited is $value");
    print("======================");
    print("$name your total balance is ${data["balance"]}");
    userLogout();
  } else {
    print("insuffient balance your account balance is ${data["balance"]}");
  }
}

// dart run main_screen.dart