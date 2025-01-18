import 'dart:io';

import 'main_screen.dart';

void userLogout() {
  print("             ");
  print("==============================");
  print("you want to exit please press 4 \nyou want to go login form pleae press 5");
  String getUserInput = stdin.readLineSync()!;
  if (getUserInput == "4") {
    print("exit");
  } else {
    print("welcome back user login form ");

    getUserinput();
  }
}