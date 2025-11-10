class FinanceItem {
  final String title;
  final String subtitle;
  final int amount; // store as integer (paise or cents if needed) or as rupee integer

  FinanceItem({
    required this.title,
    required this.subtitle,
    required this.amount,
  });
}
