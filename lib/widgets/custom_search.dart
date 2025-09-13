import 'package:flutter/material.dart';

class CustomSearsh extends StatelessWidget {
  const CustomSearsh({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,

      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Icon(Icons.search),
    );
  }
}
