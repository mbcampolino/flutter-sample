class TransactionModel {

  final double value;
  final int accountNumber;
  final int type;

  TransactionModel(this.value, this.accountNumber, this.type);

  String valueFormatted() {
    return "R\$ $value";
  }

  String accountFormatted() {
    return "Account $accountNumber";
  }

  @override
  String toString() {
    return "$value $accountNumber";
  }
}