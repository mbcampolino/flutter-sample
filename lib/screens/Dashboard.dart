import 'package:bytebank/widgets/BalanceView.dart';
import 'package:bytebank/widgets/LastTransfers.dart';
import 'package:flutter/material.dart';

import 'FormReceipt.dart';
import 'TransferForm.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Align(
            child: BalanceView(),
            alignment: Alignment.topCenter,
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                  child: Text("Receipt Money"),
                  color: Colors.green,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return FormReceipt();
                    }));
                  }),
              RaisedButton(
                  child: Text("New Transfer"),
                  color: Colors.green,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return TransferForm();
                    }));
                  })
            ],
          ),
          LastTransfers(),
        ],
      ),
      appBar: AppBar(
        title: Text("Bytebank"),
      ),
    );
  }
}
