import 'package:asda_code__app/pages/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonWidgets {
  static const String applicationTitle = "Parking Code Generator";

  static AppBar getCommonAppBar({required BuildContext context, title}) {
    return AppBar(
        backgroundColor: Colors.white,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/asda_logo.png",
              fit: BoxFit.contain,
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                title ?? CommonWidgets.applicationTitle,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const LoginPage())));
              },
              icon: const Icon(
                Icons.logout,
                color: Colors.black,
              ))
        ]);
  }
}
