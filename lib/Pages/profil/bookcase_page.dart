import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dongengku/template.dart';
import 'package:dongengku/data.dart';

class BookCasePage extends StatefulWidget {
  @override
  _BookCasePageState createState() => _BookCasePageState();
}

class _BookCasePageState extends State<BookCasePage> {
  @override
  Widget build(BuildContext context) {
    double defaultWidth = MediaQuery.of(context).size.width;
    double defaultHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xffede9ce),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xff515151),
        ),
        elevation: 0.0,
        backgroundColor: Color(0xfffbfef3),
        title: Text(
            'Lemari Buku Kamu',
            style: TextStyle(
                color: Color(0xff515151),
                fontWeight: FontWeight.bold
            )
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                    width: defaultWidth / 30,
                    height: defaultHeight / 3.8,
                    color: Color(0xfffbfef3),
                ),
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: daftarDongeng1.map((dongeng) => BookInBookCase(dongeng: dongeng,)).toList()
                      ),
                      Container(height: defaultHeight / 50, width: defaultWidth / 1.08, color: Color(0xfffbfef3))
                    ],
                  ),
                ),
                Container(
                  width: defaultWidth / 30,
                  height: defaultHeight / 3.8,
                  color: Color(0xfffbfef3),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: defaultWidth / 30,
                  height: defaultHeight / 3.8,
                  color: Color(0xfffbfef3),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: daftarDongeng4.map((dongeng) => BookInBookCase(dongeng: dongeng,)).toList()
                    ),
                    Container(height: defaultHeight / 50, width: defaultWidth / 1.08, color: Color(0xfffbfef3))
                  ],
                ),
                Container(
                  width: defaultWidth / 30,
                  height: defaultHeight / 3.8,
                  color: Color(0xfffbfef3),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: defaultWidth / 30,
                  height: defaultHeight / 3.8,
                  color: Color(0xfffbfef3),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: daftarDongeng5.map((dongeng) => BookInBookCase(dongeng: dongeng,)).toList()
                    ),
                    Container(height: defaultHeight / 50, width: defaultWidth / 1.08, color: Color(0xfffbfef3))
                  ],
                ),
                Container(
                  width: defaultWidth / 30,
                  height: defaultHeight / 3.8,
                  color: Color(0xfffbfef3),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
