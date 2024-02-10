import 'package:flutter/material.dart';
import 'package:super_todo_app/ui/login_screen/login_screen_view.dart';

class RegisterNavigator {
  static goToLoginPage(BuildContext context) {
    return Navigator.push(
        context, MaterialPageRoute(builder: (context) => const LoginScreen()));
  }
}
