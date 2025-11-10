import 'package:flutter/material.dart';
import 'package:koushik_soft_task/account/custom_widget/bar_chart_widget.dart';
import 'package:koushik_soft_task/account/custom_widget/financial_summary.dart';
import 'package:koushik_soft_task/account/custom_widget/payment_mode.dart';
import 'package:koushik_soft_task/account/custom_widget/toggle_button.dart';
import 'package:koushik_soft_task/utils/app_colors.dart';
import 'package:koushik_soft_task/utils/app_text_styles.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Account',
          style: AppTextStyles.bold18.copyWith(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///Toggle Buttons
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const SegmentedToggle(
                options: ['Today', 'Month', 'Year', 'Overall'],
                selectedIndex: 2,
                selectedColor: AppColors.primary,
              ),
            ),
            const SizedBox(height: 20),

            ///Bar Chart
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors.borderColor),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Net sales',
                              style: AppTextStyles.medium14
                                  .copyWith(color: Colors.black54)),
                          const SizedBox(height: 4),
                          Text('₹5,00,000',
                              style: AppTextStyles.bold20
                                  .copyWith(color: AppColors.primary)),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.borderColor),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            Text('2025', style: AppTextStyles.medium14),
                            const Icon(Icons.arrow_drop_down,
                                color: Colors.black, size: 20),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 15),
                  const BarChartWidget(
                    barColor: AppColors.barChartColor,
                    data: [200, 150, 180, 160, 250, 190, 100, 220],
                    labels: [
                      'Jan',
                      'Feb',
                      'Mar',
                      'Apr',
                      'May',
                      'Jun',
                      'Jul',
                      'Aug'
                    ],
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            SizedBox(height: 20), PaymentModeSection(),
            SizedBox(height: 20),
            FinancialSummarySection(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
