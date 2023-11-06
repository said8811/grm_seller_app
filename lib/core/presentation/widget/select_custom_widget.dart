import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class SelectCustomWidget extends ConsumerWidget {
  final VoidCallback onTap;
  final bool isSelected;
  final String label;
  final String count;
  const SelectCustomWidget(
      {super.key,
      required this.onTap,
      required this.isSelected,
      required this.label,
      required this.count});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: InkWell(
        borderRadius: BorderRadius.circular(18),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: isSelected ? Colors.black : Colors.white.withOpacity(0.9),
              borderRadius: BorderRadius.circular(18)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: isSelected ? Colors.white : Colors.black),
              ),
              const Gap(4),
              Text(
                count,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w200,
                    color: isSelected ? Colors.white : Colors.black),
              ),
              const Gap(12),
              SvgPicture.asset(
                isSelected
                    ? "assets/icons/arrowDown.svg"
                    : "assets/icons/next.svg",
              )
            ],
          ),
        ),
      ),
    );
  }
}
