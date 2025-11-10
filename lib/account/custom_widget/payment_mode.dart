import 'package:flutter/material.dart';
import 'package:koushik_soft_task/account/custom_widget/menu_card.dart';

class PaymentModeSection extends StatefulWidget {
  const PaymentModeSection({super.key});

  @override
  State<PaymentModeSection> createState() => _PaymentModeSectionState();
}

class _PaymentModeSectionState extends State<PaymentModeSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Payment mode',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
                child:
                    MenuCard(emoji: '💰', title: 'Cash', amount: '₹2,50,000')),
            const SizedBox(width: 12),
            Expanded(
                child:
                    MenuCard(emoji: '📱', title: 'UPI', amount: '₹1,50,000')),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
                child: MenuCard(emoji: '💳', title: 'Card', amount: '₹75,000')),
            const SizedBox(width: 12),
            Expanded(
                child: MenuCard(emoji: '🏪', title: 'OD', amount: '₹25,000')),
          ],
        ),
      ],
    );
  }
}
