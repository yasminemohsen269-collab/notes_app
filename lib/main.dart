import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/simple_bloc_observer.dart';
import 'package:notesapp/utils/app_words.dart';
import 'package:notesapp/views/notes_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    // على الويب مش محتاجين initFlutter
    Bloc.observer = SimpleBlocObserver();
    await Hive.openBox<NoteModel>(AppWords.kNotesBox);
    Hive.registerAdapter(NoteModelAdapter());
  } else {
    await Hive.initFlutter();
    Bloc.observer = SimpleBlocObserver();

    await Hive.openBox<NoteModel>(AppWords.kNotesBox);
    Hive.registerAdapter(NoteModelAdapter());
  }

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: "Poppins"),
      home: const NotesView(),
    );
  }
}
