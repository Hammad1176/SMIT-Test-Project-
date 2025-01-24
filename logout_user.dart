import 'dart:io';

import 'main_screen.dart';

void userLogout() {
  print("             ");
  print("==============================");
  print(
      "you want to exit please enter 4 \nyou want to go login form please enter 5");
  String getUserInput = stdin.readLineSync()!;
  if (getUserInput == "4") {
    print("=====================");
    print("Exit");
  } else {
    print("welcome back user login form ");
    getUserinput();
  }
}
