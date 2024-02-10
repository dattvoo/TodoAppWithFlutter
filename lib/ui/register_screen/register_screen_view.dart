import 'package:flutter/material.dart';
import 'package:super_todo_app/ui/register_screen/register_screen_navigator.dart';
import 'package:super_todo_app/widgets/CustomButton/custom_button.dart';
import 'package:super_todo_app/widgets/CustomButton/custom_button_with_icon.dart';
import 'package:super_todo_app/widgets/CustomTextFiled/custom_text_field.dart';
import 'package:super_todo_app/widgets/SplitDivider/split_divider.dart';
import 'package:super_todo_app/widgets/TextTitle/text_title.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Container(
          margin: const EdgeInsets.symmetric(horizontal: 18),
          child: GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _buildTitleForm(),
            _buildLoginForm(),
            _buildActionForm(),
            _buildLineOr(),
            _buildButtonLoginWithSocial(),
            _buildRegisterText(context)
          ],
        ),
      ),
    );
  }

  Widget _buildTitleForm() {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      child: const TextTitle(title: "Register"),
    );
  }

  Widget _buildLoginForm() {
    return Container(
      margin: const EdgeInsets.only(top: 54, bottom: 70),
      child: const Form(
        child: Column(
          children: [
            CustomTextField(
              label: "Username",
              type: TYPE_FORM.text,
              hintText: 'Enter your Username',
            ),
            SizedBox(
              height: 25,
            ),
            CustomTextField(
              label: "Password",
              type: TYPE_FORM.password,
              hintText: 'Enter your Password',
            ),
            SizedBox(
              height: 25,
            ),
            CustomTextField(
              label: "Confirm Password",
              type: TYPE_FORM.password,
              hintText: 'Confirm your password',
            )
          ],
        ),
      ),
    );
  }

  Widget _buildActionForm() {
    return CustomButton(title: 'Register', submitForm: () => {});
  }

  Widget _buildLineOr() {
    return Container(
      margin: const EdgeInsets.only(top: 45, bottom: 40),
      child: const SplitDivider(),
    );
  }

  Widget _buildButtonLoginWithSocial() {
    return const Column(children: [
      CustomButtonWithIcon(
        title: 'Register with Google',
        imagePath: 'assets/images/google.png',
      ),
      SizedBox(
        height: 20,
      ),
      CustomButtonWithIcon(
        title: 'Register with Apple',
        imagePath: 'assets/images/apple.png',
      )
    ]);
  }

  Widget _buildRegisterText(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 46),
      child: Align(
        alignment: Alignment.center,
        child: GestureDetector(
          onTap: () => {RegisterNavigator.goToLoginPage(context)},
          child: RichText(
              text: TextSpan(
                  text: "Already have an account?\t\t",
                  style: const TextStyle(color: Color(0xFF979797)),
                  children: [
                TextSpan(
                    text: 'Login',
                    style: TextStyle(color: Colors.white.withOpacity(0.87)))
              ])),
        ),
      ),
    );
  }
}
