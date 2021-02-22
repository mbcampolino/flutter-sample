import 'package:bytebank/model/TransferListModel.dart';
import 'package:bytebank/screens/TransferForm.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/TransactionModel.dart';
import '../widgets/TransferItem.dart';

class TransferList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<TransferListModel>(builder: (context, transfers, child) {
        final _lastTransfers = transfers.transfers.reversed.toList();
        return ListView.builder(
          itemCount: _lastTransfers.length,
          itemBuilder: (BuildContext context, int index) {
            return ItemTransfer(TransactionModel(_lastTransfers[index].value,
                _lastTransfers[index].accountNumber, _lastTransfers[index].type));
          },
        );
      }),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return TransferForm();
          }));
        },
      ),
      appBar: AppBar(
        title: Text(
          "Transferências",
        ),
      ),
    );
  }
}
