import 'package:bytebank/model/Transfer.dart';
import 'package:bytebank/widgets/EditText.dart';
import 'package:flutter/material.dart';

class TransferForm extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return TransferFormState();
  }
}

class TransferFormState extends State<TransferForm> {

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
    if (value != null && account != null) {
      Transfer transfer = Transfer(value, account);
      Navigator.pop(context, transfer);
    }
  }

}
