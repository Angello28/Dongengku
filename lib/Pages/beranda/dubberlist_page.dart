import 'package:dongengku/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dongengku/template.dart';

class DubberListPage extends StatefulWidget {
  @override
  _DubberListPageState createState() => _DubberListPageState();
}

class _DubberListPageState extends State<DubberListPage> {
  @override
  Widget build(BuildContext context) {
    double defaultWidth = MediaQuery.of(context).size.width;
    double defaultHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xff50c9c0),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xff515151),
        ),
        elevation: 0.0,
        backgroundColor: Color(0xff50c9c0),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(defaultWidth / 18, defaultHeight / 50, defaultWidth / 18, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Dubber Terbaik',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: defaultHeight / 40,
                color: Color(0xff515151),
              ),
            ),
            Divider(
              thickness: 1.0,
              height: defaultHeight / 20,
              color: Color(0xff9d9d9d),
            ),
            Expanded(
              child: Container(
                child: SingleChildScrollView(
                  child: Card(
                    elevation: 0.0,
                    color: Color(0xfffbfef3),
                    margin: EdgeInsets.only(bottom: defaultHeight / 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(defaultWidth / 35),
                      child: Container(
                        child: Column(
                          children: daftar_2.map((pengguna) => CardDubberList(pengguna: pengguna)).toList()
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
