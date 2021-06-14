import 'package:ediary/model/note.dart';
import 'package:flutter/material.dart';

class NoteDetailPage extends StatefulWidget {
  final NoteModel note;
  NoteDetailPage({this.note});

  @override
  _NoteDetailPageState createState() => _NoteDetailPageState();
}

class _NoteDetailPageState extends State<NoteDetailPage> {
  bool isDarkMode = true;
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: isDarkMode ? Color(0xffF2F2F2) : Color(0xff35354E),
        body: SafeArea(
            child: Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              height: 80,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: MaterialButton(
                      onPressed: () => Navigator.pop(context),
                      color: Colors.grey[400],
                      shape: CircleBorder(),
                      padding: EdgeInsets.only(left: 7),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: isDarkMode ? Color(0xff54545A) : Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 80),
                    child: Center(
                      child: Text(
                        widget.note.title,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                            color:
                                isDarkMode ? Color(0xff54545A) : Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(25, 80, 25, 100),
              child: ListView(
                children: [
                  Text(
                    widget.note.text,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 14,
                      color: isDarkMode ? Color(0xff54545A) : Colors.white,
                      height: 1.2,
                      letterSpacing: 1.0,
                    ),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                height: 60,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isDarkMode = !isDarkMode;
                    });
                  },
                  child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(15),
                      decoration: isDarkMode
                          ? BoxDecoration(
                              color: Colors.transparent,
                              border:
                                  Border.all(width: 1, color: Colors.black54),
                              borderRadius: BorderRadius.circular(50))
                          : BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [Colors.white, Colors.white54],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight),
                              borderRadius: BorderRadius.circular(35)),
                      child: isDarkMode
                          ? Icon(
                              Icons.nightlight_round,
                              size: 30,
                            )
                          : Icon(
                              Icons.wb_sunny,
                              size: 30,
                            )),
                ),
              ),
            ),
          ],
        )));
  }
}
