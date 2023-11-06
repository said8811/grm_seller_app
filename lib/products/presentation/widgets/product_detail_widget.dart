import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

class ProductDetailWidget extends StatelessWidget {
  final String label;
  final String title;
  const ProductDetailWidget({
    super.key,
    required this.label,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "$label:",
          style: TextStyle(
              fontSize: 20, color: const Color(0xFF000000).withOpacity(0.5)),
        ),
        const Gap(30),
        Text(
          title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
