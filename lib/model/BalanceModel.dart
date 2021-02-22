import 'package:flutter/material.dart';

class BalanceModel extends ChangeNotifier {

  double balanceValue;

  BalanceModel(this.balanceValue);

  void add(double value) {
    this.balanceValue += value;
    notifyListeners();
  }

  void subtract(double value) {
    this.balanceValue -= value;
    notifyListeners();
  }

  @override
  String toString() => "R\$ ${this.balanceValue.toString()}";

}