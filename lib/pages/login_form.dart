import 'package:asda_code__app/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  LoginFormState createState() => LoginFormState();
}

class LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
            child: TextFormField(
              autofocus: true,
              // The validator receives the text that the user has entered.
              decoration: const InputDecoration(
                labelText: 'Username',
                icon: const Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: const Icon(Icons.person),
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your username';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: 'Password',
                icon: const Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: const Icon(Icons.lock),
                ),
              ),
              obscureText: true,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your password';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const HomePage(
                              title: "test",
                            )),
                  );
                }
              },
              child: Text("Login"),
            ),
          ),
        ],
      ),
    );
  }
}
