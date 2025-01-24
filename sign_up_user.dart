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
    if (element["user"] == name.trim()) {
      checkUser = true;
    }
    if (element["pass"] == pass.trim()) {
      checkPass = true;
    }
  }

  if (!checkUser && !checkPass) {
    UserList.list.add(signUpUserList);
    // print(UserList.list);
    getUserinput();
  } else {
    String userPrint = checkUser ? "User is already exist " : "";
    String userPassPrint = checkPass
        ? "this password is already exist please enter unique pass "
        : "";
    print("$userPrint \n$userPassPrint");
    loginAndSignUp();
  }
}



// dart run main_screen.dart
