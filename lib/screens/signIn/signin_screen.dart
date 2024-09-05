import 'package:e_commerce/screens/signIn/components/body.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  static String routeName = '/SignIn';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SignIn'),
      ),
      body: Body(),
    );
  }
}
