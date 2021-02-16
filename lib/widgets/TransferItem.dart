import 'package:flutter/material.dart';

import '../model/Transfer.dart';

class ItemTransfer extends StatelessWidget {

  final Transfer transfer;

  ItemTransfer(this.transfer);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(transfer.value.toString()),
        subtitle: Text(transfer.accountNumber.toString()),
      ),
    );
  }
}