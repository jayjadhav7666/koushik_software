import 'package:flutter/material.dart';
import 'package:koushik_soft_task/utils/app_text_styles.dart';

class BarChartWidget extends StatelessWidget {
  final List<double> data;
  final List<String> labels;
  final Color barColor;

  const BarChartWidget({
    super.key,
    required this.data,
    required this.labels,
    required this.barColor,
  });

  @override
  Widget build(BuildContext context) {
    final double maxValue = data.reduce((a, b) => a > b ? a : b);

    final Map<int, String> yAxisScale = {
      10: '₹10K',
      50: '₹50K',
      100: '₹100K',
      150: '₹150K',
      200: '₹200K',
    };

    const double chartBarAreaHeight = 190.0;

    final double normalizationBase = maxValue;

    return Container(
      height: 250,
      padding: const EdgeInsets.only(right: 10, bottom: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 40,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ...yAxisScale.entries
                    .map((entry) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 0),
                        child: Text(
                          entry.value,
                          style: AppTextStyles.medium10
                              .copyWith(color: Colors.black54),
                        ),
                      );
                    })
                    .toList()
                    .reversed
                    .toList(),
                const SizedBox(height: 30),
              ],
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      ...yAxisScale.entries.map((entry) {
                        final value = entry.key.toDouble();

                        final double factor = (value / normalizationBase);

                        return Positioned(
                          top: (1 - factor) * chartBarAreaHeight,
                          left: 0,
                          right: 0,
                          child: Container(
                            height: 1,
                            color: Colors.grey.shade200,
                          ),
                        );
                      }).toList(),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: data.asMap().entries.map((entry) {
                            final barValue = entry.value;

                            final double barHeight =
                                (barValue / normalizationBase) *
                                    chartBarAreaHeight;

                            return Expanded(
                              child: Container(
                                height: barHeight,
                                width: double.infinity,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 4),
                                decoration: BoxDecoration(
                                  color: barColor,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4),
                                    topRight: Radius.circular(4),
                                  ),
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: labels
                      .map((label) => Expanded(
                            child: Text(
                              label,
                              textAlign: TextAlign.center,
                              style: AppTextStyles.medium12
                                  .copyWith(color: Colors.black87),
                            ),
                          ))
                      .toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
