import 'List_user.dart';
import 'home_page1.dart';
import 'logout_user.dart';
import 'main_screen.dart';

void loginUserCheck(String name, String pass) {
// List studentData = [
//   {"user": "hammad", "pass": "1144"},
//   {"user": "haseeb", "pass": "0425"},
//   {"user": "muneeb", "pass": "2515"},
//   {"user": "bilal", "pass": "1488"}
// ];

  UserList userList = UserList();

//   if (name.isEmpty && pass.isEmpty) {
//     String checkname = name.isEmpty ? "User name is empty":name;
//      String checkpass = pass.isEmpty ? "User password is empty":pass;

//      print("$checkname & $checkpass");
//      getUserinput();

// }
  bool checkLogin = false;

  for (var i in userList.list) {
    if (i["user"] == name && i["pass"] == pass) {
      print("login Succesfully");
      checkLogin = true;
      homePage(name);
    }
  }

  if (checkLogin == false) {
    print("invalid user");
    print("please enter correct user name and password");
    // getUserinput();
    userLogout();
  }
}
