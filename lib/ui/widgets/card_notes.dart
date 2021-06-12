import 'package:ediary/model/note.dart';
import 'package:flutter/material.dart';

class WidgetCardNotes extends StatelessWidget {
  final NoteModel note;
  WidgetCardNotes(this.note);

  TextStyle style1 = TextStyle(color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width - 30) / 1.2,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 0),
            color: Colors.white10,
          ),
        ],
        gradient: LinearGradient(colors: [
          Colors.white10,
          Colors.black12,
        ], begin: Alignment.topRight, end: Alignment.bottomLeft),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            note.title,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: style1.copyWith(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            note.text,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: style1,
          ),
        ],
      ),
    );
  }
}
