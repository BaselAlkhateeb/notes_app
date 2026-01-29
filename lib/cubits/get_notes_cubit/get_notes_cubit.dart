import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes/models/note_model.dart';

part 'get_notes_state.dart';

class GetNotesCubit extends Cubit<GetNotesState> {
  GetNotesCubit() : super(GetNotesInitial());

  List<NoteModel> getAllNotes() {
    var noteBox = Hive.box<NoteModel>('notes_box');
    List<NoteModel> notes = noteBox.values.toList().reversed.toList();
  emit(GetNotesSuccess());
    return notes;
  
  }
}
