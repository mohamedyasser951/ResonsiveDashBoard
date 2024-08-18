class TransactionModel {
  String title, date, money;
  bool isWithdrawal;
  TransactionModel({
    required this.date,
    required this.title,
    required this.money,
    required this.isWithdrawal
  });
}
