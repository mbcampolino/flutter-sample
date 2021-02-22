import 'package:flutter/material.dart';

import 'TransactionModel.dart';

class TransferListModel extends ChangeNotifier {
  final List<TransactionModel> _transfers = List();

  add(TransactionModel transfer) {
    _transfers.add(transfer);
    notifyListeners();
  }

  List<TransactionModel> get transfers => _transfers;

}