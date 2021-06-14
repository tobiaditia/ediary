import 'package:flutter/material.dart';

class NoteAddPage extends StatefulWidget {
  @override
  _NoteAddPageState createState() => _NoteAddPageState();
}

class _NoteAddPageState extends State<NoteAddPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff35354E),
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
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 80),
                    child: Center(
                      child: Text(
                        "Tambah Note",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Center(
              child: Text(
                "Cooming Soon",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ],
        )));
  }
}
