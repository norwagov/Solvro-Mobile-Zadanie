import 'package:flutter/material.dart';
import 'package:koktajle/elements/home/ctl_card.dart';

class CtlCarousel extends StatelessWidget {
  final List<String> items;
  final ValueChanged<String>? onTap;

  const CtlCarousel({
    super.key,
    required this.items,
    this.onTap
  });

  static const double _spacing = 12;
  static const double _sidePadding = 16;

  double _visibleCards(double width) {
    if (width < 400) return 2.5;
    if (width < 600) return 3.5;
    if (width < 900) return 4.5;
    return 6.5;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final visible = _visibleCards(constraints.maxWidth);
        final cardWidth = (constraints.maxWidth - _sidePadding - _spacing * visible.floor()) / visible;
        final cardHeight = cardWidth * 1.35;

        return SizedBox(
          height: cardHeight,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: _sidePadding),
            itemCount: items.length,
            separatorBuilder: (_, _) => const SizedBox(width: _spacing),
            itemBuilder: (context, index) => CtlCard(
              name: items[index],
              width: cardWidth,
              onTap: () => onTap?.call(items[index]),
            ),
          ),
        );
      }
    );
  }
}