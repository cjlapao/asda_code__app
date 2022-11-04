import 'package:asda_code__app/common_widgets.dart';
import 'package:asda_code__app/pages/home_page.dart';
import 'package:asda_code__app/pages/login_form.dart';
import 'package:asda_code__app/pages/login_page.dart';
import 'package:asda_code__app/qr_code.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Asda Parking Code Generator',
      debugShowCheckedModeBanner: false,
      showSemanticsDebugger: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      // home: const HomePage(title: 'Asda Parking Code Generator'),
      home: const LoginPage(),
    );
  }
}
