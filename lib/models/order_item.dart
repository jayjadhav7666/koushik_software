class OrderItem {
  final String id;
  final String customer;
  final DateTime date;
  final int total; // amount in rupees (integer)

  OrderItem({
    required this.id,
    required this.customer,
    required this.date,
    required this.total,
  });
}
