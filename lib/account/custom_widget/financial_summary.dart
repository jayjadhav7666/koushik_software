import 'package:flutter/material.dart';
import 'package:koushik_soft_task/account/custom_widget/menu_card.dart';

class FinancialSummarySection extends StatefulWidget {
  const FinancialSummarySection({super.key});

  @override
  State<FinancialSummarySection> createState() =>
      _FinancialSummarySectionState();
}

class _FinancialSummarySectionState extends State<FinancialSummarySection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Financial Summary',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
                child: MenuCard(
                    emoji: '🛒', title: 'Orders', amount: '₹6,00,000')),
            const SizedBox(width: 12),
            Expanded(
                child: MenuCard(
                    emoji: '💵', title: 'Advances', amount: '₹50,000')),
          ],
        ),
      ],
    );
  }
}
