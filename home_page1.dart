import 'dart:io';

import 'List_user.dart';
import 'logout_user.dart';

void homePage(String name, [int? counter]) {
  //check counter
  // print(getList[counter]["user"]);
  print("Welcome to Home Page ");
  print(" ");
  print("cash with draw please press 1");
  print("  ");
  print("****************************");
  print("cash deposit please press 2 ");
  String getUserInput = stdin.readLineSync()!;

  // UserList userList = UserList(); //creat object and get user list
  // final getList = userList.list; // user list ;
  final getList = UserList.list;
  if (getUserInput == "1") {
    withDrawAmount(name, getList); //withDraw,
  } else if (getUserInput == "2") {
    cashDepositAccount(name, getList); //cashDeposit,
  } else {
    userLogout();
  }
}

void cashDepositAccount(String name, List userList) {
  //num cashDeposit,
  print("please enter deposit amount");
  num cashDeposit = int.parse(stdin.readLineSync()!);
  // final data = userList.firstWhere( (i) => i["user"] == name); // output get key { user , pass , balance }

  if (cashDeposit <= 0) {
    print("please enter greater then 0 digit");
    print("===================================");
    cashDepositAccount(name, userList);
  }
  if (cashDeposit.toString().isEmpty) {
    print("your value is empty please enter value ");
    cashDepositAccount(name, userList);
  } else {
    final data = updateUserAccountBalance(name, userList);
    data["balance"] = data["balance"] + cashDeposit;
    print("transaction successfull your deposot amount is $cashDeposit");
    print("===========================================================");
    print("$name your total balance is ${data["balance"]}");
    userLogout();
  }
}

void withDrawAmount(String name, List userList) {
  //num withDraw
  print("please enter withdraw amount");
  num withDraw = int.parse(stdin.readLineSync()!);

  // final data = userList.firstWhere((i) => i["user"] == name);
  final data = updateUserAccountBalance(name, userList);
  if (data["balance"] == 0) {
    print(
        "insuffient balance your account balance is ${data["balance"]} \n please deposit first in your account ");
    cashDepositAccount(name, userList);
  }
  if (data["balance"] >= withDraw) {
    data["balance"] = data["balance"] - withDraw;
    print("transaction successfull your withdraw amount is $withDraw");
    print("======================");
    print("$name your total balance is ${data["balance"]}");
    userLogout();
  } else {
    print(
        "error your withdraw amount is greater then your balance amount \nyour balance amount is ${data["balance"]}");
    withDrawAmount(name, userList);
  }
}

Map updateUserAccountBalance(String name, List user) =>
    user.firstWhere((i) => i["user"] == name);

// dart run main_screen.dart
