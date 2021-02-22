import 'package:bytebank/model/BalanceModel.dart';
import 'package:bytebank/model/TransferListModel.dart';
import 'package:bytebank/model/TransactionModel.dart';
import 'package:bytebank/widgets/EditText.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TransferForm extends StatelessWidget {

  final TextEditingController _controllerNumberAccount =
  TextEditingController();

  final TextEditingController _controllerValue = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Criar Transferência"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            EditText(controller: _controllerNumberAccount, labelText: "Numero da Conta", hint: "0000", fontSize: 24,),
            EditText(controller:  _controllerValue, labelText: "Valor da Transferência", hint: "0,00", icon: Icon(Icons.monetization_on),),
            RaisedButton(
              onPressed: () =>  _createTransfer(context),
              child: Text("Confirmar"),
            )
          ],
        ),
      ),
    );
  }

  void _createTransfer(BuildContext context) {
    double value = double.tryParse(_controllerValue.text);
    int account = int.tryParse(_controllerNumberAccount.text);
    if (_validTransfer(context, account, value)) {
      TransactionModel transfer = TransactionModel(value, account, 0);
     _updateList(context, transfer);
      Navigator.pop(context);
    }
  }

  _updateList(BuildContext context, TransactionModel transferModel) {
    Provider.of<TransferListModel>(context, listen: false).add(transferModel);
    Provider.of<BalanceModel>(context, listen: false).subtract(transferModel.value);
  }

  _validTransfer(BuildContext context, int accountNumber, double value) => (value != null && accountNumber != null &&
      value <= Provider.of<BalanceModel>(context, listen: false).balanceValue);

}
