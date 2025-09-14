import 'package:flutter/material.dart';
import 'package:notesapp/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 86, 61, 22),
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: const NotesViewBody(),
    );
  }
}
