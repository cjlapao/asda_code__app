import 'package:asda_code_app/constants/strings.dart';
import 'package:asda_code_app/home/home_page.dart';
import 'package:asda_code_app/login/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AsdaParkingCodeGenerator());
}

class AsdaParkingCodeGenerator extends StatelessWidget {
  final String initialRoute;

  const AsdaParkingCodeGenerator({super.key, this.initialRoute = '/login'});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Asda Parking Code Generator',
      debugShowCheckedModeBanner: false,
      showSemanticsDebugger: false,
      scrollBehavior: const ScrollBehavior(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: initialRoute,
      onGenerateRoute: (settings) {
        Uri? uri = Uri.tryParse(settings.name!);
        switch (uri?.path) {
          case '/login':
            return MaterialPageRoute(
              builder: (context) => const LoginPage(),
              settings: settings,
            );
          case '/home':
            return MaterialPageRoute(
              builder: (context) => HomePage(
                title: ConstantStrings.applicationTitle,
              ),
              settings: settings,
            );
          default:
            return MaterialPageRoute(
              builder: (context) => const LoginPage(),
              settings: settings,
            );
        }
      },
      // home: const HomePage(title: 'Asda Parking Code Generator'),
      home: const LoginPage(),
    );
  }
}
