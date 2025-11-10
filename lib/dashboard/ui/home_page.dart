import 'package:flutter/material.dart';
import 'package:koushik_soft_task/dashboard/custom_widgets/finance_work.dart';
import 'package:koushik_soft_task/dashboard/custom_widgets/order_employee.dart';
import '../../utils/app_assets.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_text_styles.dart';
import '../custom_widgets/stat_box.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            height: 170,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildLogoWidget(),
                    _buildProfileWidget(),
                  ],
                ),
                const SizedBox(height: 40),
                Row(
                  children: const [
                    Expanded(
                      child: StatBox(
                        title: "Today's Shop P & L",
                        amount: "₹5,00,000",
                        isDown: true,
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: StatBox(
                        title: "Today's Employees P & L",
                        amount: "₹5,00,000",
                        isDown: true,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const FinanceWorkSection(),
                        const SizedBox(height: 30),
                        const OrdersEmployeesSection(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLogoWidget() {
    return Container(
      height: 50,
      width: 80,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Image.asset(
        AppAssets.logo,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildProfileWidget() {
    return Row(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage(AppAssets.user),
        ),
        const SizedBox(width: 7),
        Text(
          "Mayur",
          style: AppTextStyles.medium12.copyWith(color: Colors.white),
        ),
      ],
    );
  }
}
