import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

 dynamic fetchAllNotes() async {
    // emit(NotesLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      List<NoteModel> notes  = notesBox.values.toList();
      
      emit(NotesSuccess(notes));
    } catch (e) {
      emit(NotesFailure(e.toString()));
    }
  }
}
