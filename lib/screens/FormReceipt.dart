import 'package:bytebank/model/BalanceModel.dart';
import 'package:bytebank/model/TransactionModel.dart';
import 'package:bytebank/model/TransferListModel.dart';
import 'package:bytebank/widgets/EditText.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FormReceipt extends StatelessWidget {
  final TextEditingController _valueController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              EditText(
                controller: _valueController,
                labelText: "Valor",
                hint: "0.00",
                fontSize: 24,
              ),
              RaisedButton(
                onPressed: () => {receiptDeposit(context)},
                child: Text("Confirmar"),
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("Receive Money"),
        ));
  }

  void receiptDeposit(BuildContext context) {
    double value = double.tryParse(_valueController.text);
    if (value != null) {
      updateState(context, value);
      Navigator.pop(context);
    }
  }

  void updateState(context,  value) {
    Provider.of<BalanceModel>(context, listen: false).add(value);
    Provider.of<TransferListModel>(context, listen: false).add(TransactionModel(value,0,1));
  }
}
