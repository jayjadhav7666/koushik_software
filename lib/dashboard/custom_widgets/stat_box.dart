import 'package:flutter/material.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_text_styles.dart';

class StatBox extends StatelessWidget {
  final String title;
  final String amount;
  final bool isDown;

  const StatBox({
    super.key,
    required this.title,
    required this.amount,
    this.isDown = false,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: AppTextStyles.medium12.copyWith(
                  fontSize: 11,
                )),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  amount,
                  style: AppTextStyles.bold16.copyWith(color: AppColors.red),
                ),
                Icon(
                  isDown ? Icons.trending_down : Icons.trending_up,
                  color: AppColors.red,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
