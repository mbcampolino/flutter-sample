import 'package:bytebank/screens/TransferForm.dart';
import 'package:flutter/material.dart';

import '../model/Transfer.dart';
import '../widgets/TransferItem.dart';

class TransferList extends StatefulWidget {

  final List<Transfer> _transferList = List();

  @override
  State<StatefulWidget> createState() {
    return TransferListState();
  }
}

class TransferListState extends State<TransferList> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: widget._transferList.length,
        itemBuilder: (BuildContext context, int index) {
          return ItemTransfer(Transfer(
              widget._transferList[index].value, widget._transferList[index].accountNumber));
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return TransferForm();
          })).then((transfer) {
            if (transfer != null) {
              setState(() {
                widget._transferList.add(transfer);
              });
            }
          });
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
