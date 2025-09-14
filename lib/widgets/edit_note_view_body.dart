import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_app_bar.dart';
import 'package:notesapp/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26.0),
      child: Column(
        children: [
          SizedBox(height: 32),
          CustomAppBar(title: "Edit", icon: Icons.edit),
          SizedBox(height: 16),

          CustomTextField(hint: "hint"),
          SizedBox(height: 16),
          CustomTextField(hint: "hint", maxLines: 5),
        ],
      ),
    );
  }
}
