// import 'package:flutter/material.dart';
// import '../utils/app_colors.dart';

// class HomeIconButton extends StatelessWidget {
//   final String label;
//   final IconData icon;
//   final VoidCallback? onTap;
//   final int badge;

//   const HomeIconButton(
//       {super.key,
//       required this.label,
//       required this.icon,
//       this.onTap,
//       this.badge = 0});

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Column(
//         children: [
//           Stack(
//             clipBehavior: Clip.none,
//             children: [
//               Container(
//                 padding: const EdgeInsets.all(14),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   shape: BoxShape.circle,
//                   boxShadow: [
//                     BoxShadow(
//                         color: Colors.black.withOpacity(0.03), blurRadius: 8),
//                   ],
//                 ),
//                 child: Icon(icon, size: 26, color: AppColors.primary),
//               ),
//               if (badge > 0)
//                 Positioned(
//                   right: -6,
//                   top: -6,
//                   child: Container(
//                     padding:
//                         const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
//                     decoration: BoxDecoration(
//                         color: AppColors.primary,
//                         borderRadius: BorderRadius.circular(12)),
//                     child: Text('$badge',
//                         style:
//                             const TextStyle(color: Colors.white, fontSize: 11)),
//                   ),
//                 ),
//             ],
//           ),
//           const SizedBox(height: 8),
//           Text(label,
//               style: const TextStyle(fontSize: 13, color: AppColors.text)),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:koushik_soft_task/utils/app_colors.dart';
import 'package:koushik_soft_task/dashboard/custom_widgets/custom_badge.dart';

class HomeCard extends StatefulWidget {
  final String emoji;
  final String label;
  final String? badgeCount;
  final VoidCallback? onTap;

  const HomeCard({
    super.key,
    required this.emoji,
    required this.label,
    this.badgeCount,
    this.onTap,
  });

  @override
  State<HomeCard> createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColors.borderColorSecondary),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    widget.emoji,
                    style: const TextStyle(fontSize: 25),
                  ),
                ),
              ),
              if (widget.badgeCount != null)
                Positioned(
                  right: 0,
                  top: 0,
                  child: CustomBadge(count: widget.badgeCount!),
                ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            widget.label,
            style: const TextStyle(fontSize: 12, color: AppColors.textPrimary),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
