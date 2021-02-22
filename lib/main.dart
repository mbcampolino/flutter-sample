import 'package:bytebank/model/TransferListModel.dart';
import 'package:bytebank/screens/Dashboard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'model/BalanceModel.dart';

void main() => runApp(MultiProvider(
  providers: [
    ChangeNotifierProvider(create: (context) => BalanceModel(0)),
    ChangeNotifierProvider(create: (context) => TransferListModel())
  ],
  child: ByteBankApp(),
));

class ByteBankApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Dashboard(),
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