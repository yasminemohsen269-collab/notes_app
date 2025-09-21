import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(note.key),
      direction: DismissDirection.endToStart,
      background: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 213, 82, 73),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(50),
            topLeft: Radius.circular(50),
          ),
        ),
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: const Icon(Icons.delete, color: Colors.white, size: 28),
      ),
      onDismissed: (direction) {
        note.delete();
        BlocProvider.of<NotesCubit>(context).fetchAllNotes();
      },
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => EditNoteView(note: note)),
          );
        },
        child: Container(
          padding: const EdgeInsets.only(top: 16, bottom: 16, left: 8),
          decoration: BoxDecoration(
            color: Color(note.color),
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(50),
              topLeft: Radius.circular(50),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  note.title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 16),
                  child: Text(
                    note.subtitle,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 26.0),
                child: Text(
                  note.date,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.4),
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
