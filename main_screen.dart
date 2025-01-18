// importing dart:io file
import 'dart:io';
import 'login_user_check.dart';
import 'logout_user.dart';

void main() {
  getUserinput();
}

void getUserinput() {
  print("Enter your username");
  String name = stdin.readLineSync()!;
  print("Enter your password");
  String? pass = stdin.readLineSync()!;

  if (name.isEmpty && pass.isEmpty) {
    name = name.isEmpty ? "User name is empty" : " ";
    pass = pass.isEmpty ? "User name is empty" : " ";
    print("$name \n$pass ");
    userLogout();
  } else {
    loginUserCheck(name, pass);
  }
} 

// dart run main_screen.dart
