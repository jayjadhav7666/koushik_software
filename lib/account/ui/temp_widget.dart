// --- 1. Segmented Toggle (Today/Month/Year/Overall) ---
import 'package:flutter/material.dart';
import 'package:koushik_soft_task/utils/app_text_styles.dart';

// --- 2. Bar Chart Widget (Mockup - Focus on Layout) ---

// --- 3. Payment Mode Card (Cash, UPI, Card, OD) ---
class PaymentModeCard extends StatelessWidget {
  final String title;
  final String amount;
  // IconData and iconColor are kept for compatibility but not used for the custom image
  final IconData? icon;
  final Color? iconColor;

  const PaymentModeCard({
    super.key,
    required this.title,
    required this.amount,
    this.icon,
    this.iconColor,
  });

  // Helper widget to build the custom orange wallet icon with green cash,
  // mimicking the visual style of the image.
  Widget _buildWalletIcon() {
    const Color walletColor =
        Color(0xFFE58F49); // Orange/Brown color of the wallet
    const Color cashColor = Color(0xFF4CAF50); // Green color of the cash

    return Stack(
      // Ensure alignment is slightly to the right to show the cash sticking out
      alignment: Alignment.topRight,
      children: [
        // Wallet body (Slightly larger container to hold the shape)
        Container(
          width: 30,
          height: 20,
          decoration: BoxDecoration(
              color: walletColor,
              borderRadius: BorderRadius.circular(4),
              // Optional: adds a slight bevel/depth, matching the subtle 3D look
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  offset: const Offset(0, 1),
                  blurRadius: 1,
                ),
              ]),
          // Small circle for button/clasp
          child: const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 3.0),
              child:
                  CircleAvatar(radius: 1.5, backgroundColor: Color(0xFFD3A47A)),
            ),
          ),
        ),
        // Cash sticking out
        Transform.translate(
          // Moves the cash up and slightly to the side relative to the wallet
          offset: const Offset(3, -5),
          child: Container(
            width: 15,
            height: 8,
            decoration: BoxDecoration(
              color: cashColor,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      // Standard card elevation and shape to match the container style
      elevation: 1,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
              color: Colors.grey.shade100,
              width: 0.5) // Light border for better definition
          ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          // Aligns all text and content to the left
          crossAxisAlignment: CrossAxisAlignment.start,
          // Removes spacing between elements, stacking them closely
          children: [
            Row(
              children: [
                _buildWalletIcon(), // Custom icon widget
                const SizedBox(width: 8),
                Text(
                  title,
                  style: AppTextStyles.medium14.copyWith(color: Colors.black87),
                ),
              ],
            ),

            // Small space between the icon/title row and the amount text
            const SizedBox(height: 8),

            Text(
              amount,
              // Amount text is bold black, matching the image
              style: AppTextStyles.bold16.copyWith(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}

// --- 4. Financial Summary Card (Orders, Advances, etc.) ---
class SummaryCard extends StatelessWidget {
  final String title;
  final String amount;
  final IconData icon;
  final Color iconColor;

  const SummaryCard({
    super.key,
    required this.title,
    required this.amount,
    required this.icon,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Icon
            Icon(icon, color: iconColor, size: 30),

            // Text Content
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style:
                        AppTextStyles.medium14.copyWith(color: Colors.black87)),
                const SizedBox(height: 2),
                Text(amount, style: AppTextStyles.bold16),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
