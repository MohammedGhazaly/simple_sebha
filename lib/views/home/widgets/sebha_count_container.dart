import 'package:flutter/material.dart';

class SebhaCountContainer extends StatelessWidget {
  final int count;
  const SebhaCountContainer({
    super.key,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Text(count.toString()),
    );
  }
}
