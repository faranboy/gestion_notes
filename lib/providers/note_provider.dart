import 'package:flutter/material.dart';
import 'package:notes_gestion/models/note.dart';

class NoteProvider with ChangeNotifier {
  final List<Note> _notes = [];

  List<Note> get notes => _notes;

  void addNote (Note note) {
    _notes.add(note);
    notifyListeners();
  }

  void modifyNote(int index, Note updateNote) {
    if (index >= 0 && index < _notes.length) {
      _notes[index] = updateNote;
      notifyListeners();
    }
  }

  void deleteNote(int index) {
    if (index >= 0 && index < _notes.length) {
      _notes.removeAt(index);
      notifyListeners();
    }
  }
}