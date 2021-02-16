import 'package:bytebank/screens/TransferList.dart';
import 'package:flutter/material.dart';

void main() => runApp(ByteBankApp());

class ByteBankApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TransferList(),
      theme : ThemeData(
        primaryColor: Colors.green[900],
        accentColor: Colors.blueAccent[700],
        buttonTheme: ButtonThemeData(
          textTheme: ButtonTextTheme.primary,
          buttonColor: Colors.blueAccent[700]
        )
      )
    );
  }
}