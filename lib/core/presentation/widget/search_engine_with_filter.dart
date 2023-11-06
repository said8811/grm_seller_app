import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class SearchEngineWithFilter extends StatelessWidget {
  final VoidCallback onTap;
  const SearchEngineWithFilter({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(18)),
                hintText: "Поиск",
                prefixIcon: const Icon(Icons.search),
                fillColor: Colors.white,
                filled: true,
              ),
            ),
          ),
          const Gap(7),
          Expanded(
            child: InkWell(
              splashColor: Colors.white,
              borderRadius: BorderRadius.circular(10),
              onTap: onTap,
              child: Container(
                height: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(10)),
                padding: const EdgeInsets.all(18),
                child: SvgPicture.asset(
                  "assets/icons/filterOutlined.svg",
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
