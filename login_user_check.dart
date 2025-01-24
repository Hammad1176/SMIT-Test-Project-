import 'List_user.dart';
import 'home_page1.dart';
import 'logout_user.dart';

void loginUserCheck(String name, String pass) {
  // UserList userList = UserList();

  bool checkLogin = false;
  int counter = 0;
  print(UserList.list);
  for (var i in UserList.list) {
    int index = counter++;
    if (i["user"] == name.trim() && i["pass"] == pass.trim()) {
      print("login Succesfully");
      checkLogin = true;
      // print("index is $index");
      // print(userList.list[index]["user"]);
      homePage(name, index);
    }
  }

  if (checkLogin == false) {
    print("invalid user");
    print("please enter correct user name and password");
    // getUserinput();
    userLogout();
  }
}
