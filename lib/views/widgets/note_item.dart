import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/edit_note_view_body.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return EditNoteViewBody();
            },
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24, left: 10, bottom: 24),
        decoration: BoxDecoration(
          color: Color(0xffFED38B),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                'Flutter Tips',
                style: TextStyle(color: Colors.black, fontSize: 24),
              ),

              subtitle: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  'Build your career with Fadel Alferjani',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black.withValues(alpha: 0.5),
                  ),
                ),
              ),
              trailing: IconButton(
                padding: EdgeInsets.only(left: 16, top: 10),
                onPressed: () {},
                icon: Icon(Icons.delete, color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 18, top: 16),
              child: Text(
                'Joun12 , 2026',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black.withValues(alpha: 0.5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
