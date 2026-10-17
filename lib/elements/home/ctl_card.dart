import 'package:flutter/material.dart';

class CtlCard extends StatelessWidget {
  final String name;
  final double width;
  final VoidCallback? onTap;

  const CtlCard({
    super.key,
    required this.name,
    required this.width,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onTap,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.pink.shade50,
                  child: const Icon(Icons.local_bar, size: 48),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text(name, maxLines: 1, overflow: TextOverflow.ellipsis),
              ),
            ],
          ),
        ),
      ),
    );
  }
}