import 'dart:io';

void main() {
  print("Welcome to StreamTalk!");
  bool isProgramRunning = true;
  String userNameAfterSignUp = "";
  String userPasswordAfterSignUp = "";

  while (isProgramRunning) {
    print("(S)ign up or (L)ogIn!");
    String userChoiceInput = stdin.readLineSync()!;
    switch (userChoiceInput) {
      case "s" || "S":
        isProgramRunning = true;
        stdout.write("Create Username: ");
        userNameAfterSignUp = stdin.readLineSync()!;
        stdout.write("Create Password: ");
        userPasswordAfterSignUp = stdin.readLineSync()!;
        stdout.write("E-mail: ");
        stdin.readLineSync()!;
        print("Succesfully created an Account! now LogIn and Enjoy!");
      case "l" || "L":
        isProgramRunning = true;
        stdout.write("Enter Username: ");

        String userNameInput = stdin.readLineSync()!;
        stdout.write("Enter Password: ");

        String userPasswordInput = stdin.readLineSync()!;
        if (userNameInput == userNameAfterSignUp &&
            userPasswordInput == userPasswordAfterSignUp) {
          print("succesfully LoggedIn! Enjoy!");
        } else {
          print("Username or Passwort wrong, try again!");
        }
    }
  }
}
