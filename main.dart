import 'dart:io';

import '../fuctions/login_function.dart';
import '../fuctions/singup_function.dart';
import 'classes_streamtalk/user.dart';

void main() {
  print("Welcome to StreamTalk!");
  bool isProgramRunning = true;

  List<User> users = [];
  while (isProgramRunning) {
    print("(S)ign up or (L)ogIn!");
    String userChoiceInput = stdin.readLineSync()!;
    switch (userChoiceInput) {
      case "s" || "S":
        User currentUser = signUp();
        users.add(currentUser);
      case "l" || "L":
        loginUser(users);
    }
  }
}
