import 'package:bloc/bloc.dart';
import 'package:flutter/rendering.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/utils/app_words.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Color? color = const Color(0xff414833);
  addNote(NoteModel note) async {
    note.color = color!.value;
    emit(AddNoteLoading());
    try {
      var noteBox = Hive.box<NoteModel>(AppWords.kNotesBox);

      await noteBox.add(note);
      emit(AddNoteSuccces());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
