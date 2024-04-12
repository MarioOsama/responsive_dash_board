class OverViewTransactionHistoryListViewModel {
  final String name, date, amount;
  final bool isWithdrawal;

  const OverViewTransactionHistoryListViewModel({
    required this.name,
    required this.date,
    required this.amount,
    required this.isWithdrawal,
  });
}
