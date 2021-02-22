import 'package:bytebank/model/BalanceModel.dart';
import 'package:bytebank/model/TransferListModel.dart';
import 'package:bytebank/model/TransactionModel.dart';
import 'package:bytebank/screens/TransferList.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'TransferItem.dart';

class LastTransfers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          " last transactions",
          textAlign: TextAlign.left,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Consumer<TransferListModel>(builder: (context, transfers, child) {
          return ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: transfers.transfers.length,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return ItemTransfer(TransactionModel(
                  transfers.transfers[index].value,
                  transfers.transfers[index].accountNumber,
                  transfers.transfers[index].type));
            },
          );
        }),
        RaisedButton(
          onPressed: () => {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return TransferList();
            }))
          },
          child: Text("See all transfers"),
        ),
      ],
    );
  }

  int _itemCountToShow(int total) {
    if (total > 2) {
      return 2;
    } else {
      return total;
    }
  }
}
