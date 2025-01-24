// importing dart:io file
import 'dart:io';
import 'login_user_check.dart';
import 'logout_user.dart';
import 'sign_up_user.dart';

void main() {
  loginAndSignUp();
}

void getUserinput() {
  print("Login User ");
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

void loginAndSignUp() {
  print("Sign UP User Account please enter 1");
  print("Account Login Account please enter 2");
  String check = stdin.readLineSync()!;
  if (check == "1") {
    print("Enter Your Name");
    String userName = stdin.readLineSync()!;
    print("Enter Your Password");
    String? userPass = stdin.readLineSync()!;
    if (userName.isEmpty && userPass.isEmpty) {
      userName = userName.isEmpty ? "User name is empty" : " ";
      userPass = userPass.isEmpty ? "User name is empty" : " ";
      print("$userName \n$userPass ");
      loginAndSignUp();
    } else {
      signUpUser(name: userName, pass: userPass);
    }
  } else {
    getUserinput();
  }
}

// dart run main_screen.dart
