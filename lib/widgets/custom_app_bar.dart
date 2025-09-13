import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_search.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Notes", style: TextStyle(color: Colors.white, fontSize: 23)),
        Spacer(),
        CustomSearsh(),
      ],
    );
  }
}
