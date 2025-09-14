import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 16, bottom: 16, left: 8),
      decoration: BoxDecoration(
        color: Color(0xffffcc80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              "Flutter Tips",
              style: TextStyle(color: Colors.black, fontSize: 26),
            ),
            subtitle: Padding(
              padding: EdgeInsetsGeometry.only(top: 16, bottom: 16),
              child: Text(
                "Build your career with yasmine mohsen",
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 17,
                ),
              ),
            ),

            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete, color: Colors.black, size: 26),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 26.0),
            child: Text(
              "May 21, 2025",
              style: TextStyle(
                color: Colors.black.withOpacity(0.4),
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
