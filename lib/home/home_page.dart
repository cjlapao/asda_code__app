import 'package:asda_code_app/common/asda_code_generator.dart';
import 'package:asda_code_app/common/common_app_bar.dart';
import 'package:asda_code_app/common/qr_code_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final asdaCodeGenerator = AsdaCodeGenerator();
  var _asdaCode = "";

  _HomePageState() {
    _asdaCode = asdaCodeGenerator.calculate();
  }

  void _incrementCounter() {
    setState(() {
      _asdaCode = asdaCodeGenerator.calculate();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: widget.title),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Press the button to regenerate code',
              style: Theme.of(context).textTheme.headline6,
            ),
            QRCode(
              qrData: _asdaCode,
              qrSize: 320,
            ),
            Text(
              _asdaCode,
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
