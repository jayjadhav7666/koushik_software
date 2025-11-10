import 'package:flutter/material.dart';
import 'package:koushik_soft_task/dashboard/custom_widgets/home_card.dart';

class OrdersEmployeesSection extends StatefulWidget {
  const OrdersEmployeesSection({super.key});

  @override
  State<OrdersEmployeesSection> createState() => _OrdersEmployeesSectionState();
}

class _OrdersEmployeesSectionState extends State<OrdersEmployeesSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Orders & Employees',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            HomeCard(emoji: '🛒', label: 'New Order'),
            HomeCard(emoji: '📦', label: 'Order Limit'),
            HomeCard(emoji: '🔍', label: 'Scan Work'),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            HomeCard(emoji: '🕒', label: 'Attendance'),
            HomeCard(emoji: '👨‍💼', label: 'Employees'),
            HomeCard(
              emoji: '📋',
              label: 'Leave Requests',
              badgeCount: '123',
            ),
          ],
        ),
      ],
    );
  }
}
