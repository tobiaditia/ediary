import 'package:ediary/ui/pages/note_detail.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
//view
import 'package:ediary/ui/pages/note_add.dart';
import 'package:ediary/ui/widgets/card_notes.dart';
//model
import 'package:ediary/model/note.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextStyle style1 = TextStyle(color: Colors.white);
      var dfMontYear = DateFormat.yMMM().format(DateTime.now());
      var dfDayString = DateFormat.EEEE().format(DateTime.now());
      var dfDay = DateFormat.d().format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff35354E),
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              padding: EdgeInsets.fromLTRB(15, 20, 15, 70),
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Be Focus",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    Icon(Icons.bus_alert, color: Colors.yellow)
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff8561E8)),
                  child: Column(
                    children: <Widget>[
                      Text(
                        dfMontYear,
                        style: style1.copyWith(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 2.0,
                                  spreadRadius: 0.0,
                                  offset: Offset(2.0, 2.0),
                                )
                              ],
                              gradient: LinearGradient(
                                  colors: [
                                    Colors.white,
                                    Colors.black12,
                                    Colors.yellow[100]
                                  ],
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft),
                            ),
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  dfDayString,
                                  style: style1,
                                ),
                                Text(
                                  dfDay,
                                  style: style1,
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Mood Notes",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return NoteAddPage();
                        }));
                      },
                      child: Container(
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              colors: [
                                Colors.white54,
                                Colors.black12,
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                        ),
                        child: Icon(Icons.add_box, color: Colors.yellow),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                SizedBox(
                  height: 90,
                  child: noteList.length == 0
                      ? Container(
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
                            gradient: LinearGradient(
                                colors: [
                                  Colors.white10,
                                  Colors.black12,
                                ],
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft),
                          ),
                          child: Center(
                            child: Text(
                              "Isi Note Yuk",
                              style: style1.copyWith(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ))
                      : ListView.builder(
                          itemBuilder: (context, index) {
                            final NoteModel note = noteList[index];
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return NoteDetailPage(
                                    note: note,
                                  );
                                }));
                              },
                              child: Container(
                                  margin: EdgeInsets.only(
                                      right: (index == noteList.length - 1)
                                          ? 0
                                          : 15),
                                  child: WidgetCardNotes(note)),
                            );
                          },
                          itemCount: noteList.length,
                          scrollDirection: Axis.horizontal,
                        ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff8561E8)),
                  child: Column(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          'assets/images/steve.jpg',
                          fit: BoxFit.contain,
                          width: MediaQuery.of(context).size.width / 2,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "\" Your time is limited, so don't waste it living someone else's life. Don't be trapped by dogma – which is living with the results of other people's thinking.\" ",
                        style: style1.copyWith(
                            fontSize: 14, fontStyle: FontStyle.italic),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "- Steve Jobs",
                        style: style1.copyWith(
                            fontSize: 14, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
