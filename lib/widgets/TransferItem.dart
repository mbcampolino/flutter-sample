import 'package:flutter/material.dart';

import '../model/TransactionModel.dart';

class ItemTransfer extends StatelessWidget {

  final TransactionModel transfer;

  ItemTransfer(this.transfer);

  @override
  Widget build(BuildContext context) {

    Icon _icon = Icon(Icons.monetization_on);

    if (transfer.type == 1) {
      _icon = Icon(Icons.money);
    }
    return Card(
      child: ListTile(
        leading: _icon,
        title: Text(transfer.valueFormatted()),
        subtitle: Text(transfer.accountFormatted()),
      ),
    );
  }
}