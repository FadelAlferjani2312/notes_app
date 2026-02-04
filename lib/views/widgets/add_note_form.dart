import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note_cubits/add_note_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/custom_buttom.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode? autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(height: 24),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hintText: 'Titel',
          ),
          SizedBox(height: 10),
          CustomTextField(
            onSaved: (value) {
              subTitle = value;
            },
            hintText: 'Content',
            maxLines: 5,
          ),
          SizedBox(height: 30),
          CustomButtom(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                var noteModel = NoteModel(
                  title: title!,
                  subTitle: subTitle!,
                  date: DateTime.now().toString(),
                  color: Colors.blue.r.toInt(),
                );
                BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
