import 'package:flutter/material.dart';
import 'package:super_todo_app/ui/login_screen/login_screen_view.dart';
import 'package:super_todo_app/ui/register_screen/register_screen_view.dart';

class StartNavigator {
  static goToLoginPage(BuildContext context) {
    return Navigator.push(
        context, MaterialPageRoute(builder: (context) => const LoginScreen()));
  }

  static goToRegisterPage(BuildContext context) {
    return Navigator.push(context,
        MaterialPageRoute(builder: (context) => const RegisterScreen()));
  }
}
