import 'dart:ffi';

import 'List_user.dart';
import 'main_screen.dart';

signUpUser(
    {required String name, required String pass, int accountBalance = 0}) {
  // UserList userList = UserList();
  Map signUpUserList = {
    "user": name.trim(),
    "pass": pass.trim(),
    "balance": accountBalance
  };
  bool checkUser = false;
  bool checkPass = false;
  for (var element in UserList.list) {
    if (element["user"] == name.trim() && element["pass"] == pass.trim()) {
      checkUser = true;
      checkPass = true;
    }
  }

  if (!checkUser && !checkPass) {
    UserList.list.add(signUpUserList);
    // print(UserList.list);
    getUserinput();
  } else {
    String userPrint = checkUser ? "User is already exist " : "" ;
    String userPassPrint = checkPass ? "this password is already exist " : "" ;
    print("$userPrint \n$userPassPrint");

    // print("$checkPass  $checkUser");
  }
}

// void main() {
//   signUpUser(name: "name", pass: "pass");
// }

// dart run sign_up_user.dart