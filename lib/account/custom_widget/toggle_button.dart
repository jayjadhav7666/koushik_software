
import 'package:flutter/material.dart';
import 'package:koushik_soft_task/utils/app_text_styles.dart';

class SegmentedToggle extends StatelessWidget {
  final List<String> options;
  final int selectedIndex;
  final Color selectedColor;

  const SegmentedToggle({
    super.key,
    required this.options,
    required this.selectedIndex,
    required this.selectedColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: options.asMap().entries.map((entry) {
        final index = entry.key;
        final text = entry.value;
        final isSelected = index == selectedIndex;

        return Expanded(
          child: Container(
            margin: EdgeInsets.only(right: index < options.length - 1 ? 8 : 0),
            padding: const EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              color: isSelected ? selectedColor : Colors.grey.shade100,
              borderRadius: BorderRadius.circular(10),
              border:
                  isSelected ? null : Border.all(color: Colors.grey.shade300),
            ),
            child: Center(
              child: Text(
                text,
                style: AppTextStyles.medium14.copyWith(
                  color: isSelected ? Colors.white : Colors.black87,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}