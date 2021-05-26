import 'package:ediary/model/note.dart';
import 'package:ediary/model/task.dart';
import 'package:ediary/ui/pages/note_add.dart';
import 'package:ediary/ui/widgets/card_notes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextStyle style1 = TextStyle(color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff35354E),
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
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
                        "February",
                        style: style1,
                      ),
                      Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text(
                                "Mon",
                                style: style1,
                              ),
                              Text(
                                "11",
                                style: style1,
                              )
                            ],
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
                    Icon(Icons.add_box, color: Colors.yellow)
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  height: 115,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      final NoteModel note = noteList[index];
                      return Container(
                          margin: EdgeInsets.only(
                              right: (index == noteList.length - 1) ? 0 : 15),
                          child: WidgetCardNotes(note));
                    },
                    itemCount: noteList.length,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "To Do",
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
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff8561E8)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: ShaderMask(
                          shaderCallback: (rect) {
                            return LinearGradient(
                                    colors: [Colors.black, Colors.transparent],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter)
                                .createShader(Rect.fromLTRB(
                                    0, 120, rect.width, rect.height));
                          },
                          blendMode: BlendMode.dstIn,
                          child: Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                )
                              ],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 130,
                            child: ListView(
                                children: taskList.map((task) {
                              return CheckboxListTile(
                                title: Text(
                                  task.title,
                                  style: style1,
                                ),
                                value: task.checked,
                                activeColor: Colors.black,
                                onChanged: (value) {},
                              );
                            }).toList()),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                )
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      GestureDetector(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Color(0xff3F3838),
                              border: Border.all(color: Color(0xffD9B86C)),
                              borderRadius: BorderRadius.circular(30)),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.book,
                                color: Color(0xffD9B86C),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Home',
                                style: TextStyle(
                                    color: Color(0xffD9B86C),
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Icon(
                            Icons.new_releases,
                            color: Color(0xff5E557C),
                            size: 30,
                          ),
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Icon(
                            Icons.new_releases,
                            color: Color(0xff5E557C),
                            size: 30,
                          ),
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Icon(
                            Icons.supervised_user_circle,
                            color: Color(0xff5E557C),
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
