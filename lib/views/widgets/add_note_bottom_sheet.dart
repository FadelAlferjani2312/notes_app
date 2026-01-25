import 'package:flutter/material.dart';

import 'package:note_app/views/widgets/custom_buttom.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 24),
            CustomTextField(
              hintText: 'Titel',
             
            ),
            SizedBox(height: 10,),
            CustomTextField(
              hintText: 'Content',
              maxLines: 5,
            ),
            SizedBox(height: 30,),
            CustomButtom(),
            SizedBox(height: 15,),
            ],
            ),
      ),
    );
  }
}

