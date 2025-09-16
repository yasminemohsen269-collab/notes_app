part of 'add_note_cubit.dart';

@immutable
sealed class AddNoteState {}

class AddNoteInitial extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteSuccces extends AddNoteState {}

class AddNoteFailure extends AddNoteState {
  final String errorMessage;

  AddNoteFailure(this.errorMessage);
}
