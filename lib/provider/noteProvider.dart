import 'package:flutter/widgets.dart';
import '../widget/note.dart';

class NoteProvider extends ChangeNotifier {
  List<Note> _notes = [];

  List<Note> get notes => _notes;

  void addNote(Note note) {
    _notes.add(note);
    notifyListeners();
  }
// ... altri metodi per rimuovere, modificare note
}