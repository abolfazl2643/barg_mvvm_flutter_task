import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/validators/textfield_validator.dart';
import '../../view_model/auth_controller.dart';
import '../themes/theme.dart';
import '../widgets/login_formfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with Validator {
  final _formKey = GlobalKey<FormState>();
  final usernameTxtController = TextEditingController(text: 'username');
  final passwordTxtController = TextEditingController(text: 'password');
  final AuthController authController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(loginLayoutPadding),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const SizedBox(height: loginFormPaddingFromTop),
                  LoginTextFormField(
                    controller: usernameTxtController,
                    validator: validateUsername,
                  ),
                  const SizedBox(height: formFieldPadding),
                  LoginTextFormField(
                    controller: passwordTxtController,
                    validator: validatePassword,
                  ),
                ],
              ),
              TextButton(
                onPressed: () => submitFrom(),
                style: loginButtonStyle,
                child: const Text(
                  'login',
                  style: loginButtonTextStyle,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void submitFrom() {
    if (_formKey.currentState!.validate()) {
      authController.login(
        usernameTxtController.text,
        passwordTxtController.text,
      );
    }
  }
}
