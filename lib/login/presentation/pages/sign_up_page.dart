import 'package:flutter/material.dart';
import 'package:logeste/login/presentation/pages/screens/sign_up_screen.dart';

// ignore: must_be_immutable
class SignUpPage extends StatelessWidget {
  final int initTap;

  SignUpPage({Key? key, required this.initTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SignUpScreen(initTap: initTap,);
  }
}
