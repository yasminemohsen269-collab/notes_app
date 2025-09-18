import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/utils/app_words.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchAllNotes() async {
    try {
      var noteBox = Hive.box<NoteModel>(AppWords.kNotesBox);

      List<NoteModel> notes = noteBox.values.toList();
      emit(NoteSuccces(notes));
    } catch (e) {
      emit(NoteFailure(e.toString()));
    }
  }
}
