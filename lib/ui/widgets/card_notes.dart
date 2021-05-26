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
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    note.title,
                    style: style1.copyWith(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    note.text,
                    style: style1,
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(colors: [
                    Colors.white54,
                    Colors.black12,
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                ),
                child: Icon(Icons.emoji_emotions, color: Color(0xffD9B86C)),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.transparent),
                child: Text(
                  "test",
                  style: TextStyle(
                      color: Color(0xff9F6BAD), fontWeight: FontWeight.bold),
                ),
              )
            ],
          )
          // Row(
          //   children: <Widget>[
          //     Column(
          //       children: <Widget>[
          //         Text(
          //           "Mon",
          //           style: style1,
          //         ),
          //         Text(
          //           "11",
          //           style: style1,
          //         )
          //       ],
          //     )
          //   ],
          // )
        ],
      ),
    );
  }
}
