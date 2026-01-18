
import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton.small(
        
         shape: CircleBorder(),
         backgroundColor: Colors.white,
        onPressed: (){},
       child: Icon(Icons.add , color: Colors.black, size: 28,),
      ) ,
        body: NotesViewBody(),
    );
  }
}
