import 'package:bytebank/model/BalanceModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BalanceView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Consumer<BalanceModel>(
          builder: (context, balanceValue, child) {
            return Text(
              balanceValue.toString(),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            );
          },
        )
      ),
    );
  }
}
