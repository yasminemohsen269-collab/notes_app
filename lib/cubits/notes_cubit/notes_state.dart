part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

class NotesInitial extends NotesState {}

class NoteLoading extends NotesState {}

class NoteSuccces extends NotesState {
  final List<NoteModel> notes;

  NoteSuccces(this.notes);
}

class NoteFailure extends NotesState {
  final String errorMessage;

  NoteFailure(this.errorMessage);
}
