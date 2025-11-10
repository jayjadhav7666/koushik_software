import 'package:flutter/material.dart';
import 'package:koushik_soft_task/account/ui/account_page.dart';
import 'package:koushik_soft_task/dashboard/custom_widgets/home_card.dart';

class FinanceWorkSection extends StatefulWidget {
  const FinanceWorkSection({super.key});

  @override
  State<FinanceWorkSection> createState() => _FinanceWorkSectionState();
}

class _FinanceWorkSectionState extends State<FinanceWorkSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Finance & Work',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            HomeCard(emoji: '💵', label: 'Expenses'),
            HomeCard(
              emoji: '🏦',
              label: 'Account',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AccountPage(),
                  ),
                );
              },
            ),
            HomeCard(
              emoji: '⏰',
              label: 'Late Work',
              badgeCount: '123',
            ),
          ],
        ),
        const SizedBox(height: 20),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            HomeCard(
              emoji: '🧾',
              label: 'Order List',
            ),
            HomeCard(
              emoji: '📦',
              label: 'Ready Packet',
              badgeCount: '123',
            ),
            HomeCard(
              emoji: '❌',
              label: 'Rejected Work',
              badgeCount: '123',
            ),
          ],
        ),
      ],
    );
  }
}
