import 'package:flutter/material.dart';

class SingleOption extends StatelessWidget {
  final String text;
  final bool selected;
  const SingleOption({
    this.selected = false,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      height: 36,
      decoration: BoxDecoration(
          color: selected ? const Color(0xFFFF4317) : Colors.white,
          border: selected
              ? null
              : Border.all(color: const Color(0xFFBBD5DB), width: 2),
          borderRadius: BorderRadius.circular(24)
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Center(child: Text(
          text,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: selected ? Colors.white : const Color(0xFF1F2B2E),
          ),
        ),
        ),
      ),
    );
  }
}
