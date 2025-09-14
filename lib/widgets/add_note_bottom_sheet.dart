import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(height: 32),
        CustomTextField(hint: "title"),
        SizedBox(height: 10),
        CustomTextField(hint: "content", maxLines: 5),
      ],
    );
  }
}
