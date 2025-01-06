import 'package:corso_flutter/provider/noteProvider.dart';
import 'package:corso_flutter/widget/note.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  _AddNoteFormState createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final noteProvider = Provider.of<NoteProvider>(context);

    return Form(
      key: _formKey,
      child: Column(
        // ...
        children: [
          // TextField per il titolo
          // TextField per il contenuto
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                noteProvider.addNote(Note(
                  title: _titleController.text,
                  content: _contentController.text,
                ));
              }
            },
            child: const Text('Aggiungi nota'),
          ),
        ],
      ),
    );
  }
}