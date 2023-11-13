class Transaction {
  final double amount;
  final String category;
  final DateTime entryDate;
  final String description;

  Transaction({
    required this.amount,
    required this.category,
    required this.entryDate,
    required this.description,
  });
}

class IncomeModel {
  List<Transaction> incomeTransactions = [];

  void addIncomeTransaction(
      double amount, String category, DateTime entryDate, String description) {
    Transaction newTransaction = Transaction(
      amount: amount,
      category: category,
      entryDate: entryDate,
      description: description,
    );
    incomeTransactions.add(newTransaction);
  }
}

class ExpenseModel {
  List<Transaction> expenseTransactions = [];

  void addExpenseTransaction(
      double amount, String category, DateTime entryDate, String description) {
    Transaction newTransaction = Transaction(
      amount: amount,
      category: category,
      entryDate: entryDate,
      description: description,
    );
    expenseTransactions.add(newTransaction);
  }
}
