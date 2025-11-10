import 'package:flutter/material.dart';
import 'package:koushik_soft_task/utils/app_colors.dart';
import 'package:koushik_soft_task/utils/app_text_styles.dart';

class MenuCard extends StatelessWidget {
  final String title;
  final String amount;
  final String emoji;

  const MenuCard({
    super.key,
    required this.title,
    required this.amount,
    required this.emoji,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.borderColorSecondary, width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                emoji,
                style: const TextStyle(fontSize: 24),
              ),
              const SizedBox(width: 8),
              Text(
                title,
                style: AppTextStyles.medium16.copyWith(
                  fontSize: 14,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            amount,
            style: AppTextStyles.bold18.copyWith(
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
