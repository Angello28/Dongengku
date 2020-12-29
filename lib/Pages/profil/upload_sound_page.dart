import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class UploadSoundPage extends StatefulWidget {
  @override
  _UploadSoundPageState createState() => _UploadSoundPageState();
}

class _UploadSoundPageState extends State<UploadSoundPage> {
  @override
  Widget build(BuildContext context) {
    double defaultWidth = MediaQuery.of(context).size.width;
    double defaultHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xfffbfef3),
      appBar: AppBar(
        backgroundColor: Color(0xff50c9c0),
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(defaultWidth / 60, defaultWidth / 100, defaultWidth / 60, defaultWidth / 45),
            height: defaultHeight / 2.7,
            color: Color(0xff50c9c0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image(
                  image: AssetImage('assets/books/Danau_Toba.png'),
                  width: defaultWidth / 2.1,
                ),
                SizedBox(width: defaultWidth / 20),
                Container(
                  width: defaultWidth / 3,
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: defaultHeight / 60),
                      Text(
                          'LEGENDA DANAU TOBA',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2.0,
                            fontSize: defaultHeight / 45,
                            color: Color(0xfffbfef3),
                          ),
                      ),
                      SizedBox(height: defaultHeight / 90),
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Icon(
                                Icons.fiber_manual_record,
                                size: defaultHeight / 80,
                                color: Color(0xfffbfef3),
                            ),
                            SizedBox(width: defaultWidth / 40),
                            Container(
                              width: defaultWidth / 4,
                              child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                          text: "Untuk teks dari dongeng dapat dilihat ",
                                          style: TextStyle(fontSize: defaultHeight / 65)
                                      ),
                                      TextSpan(
                                          text: "disini",
                                          style: TextStyle(
                                              fontSize: defaultHeight / 65,
                                              decoration: TextDecoration.underline)
                                      ),
                                    ],
                                  ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Icon(
                              Icons.fiber_manual_record,
                              size: defaultHeight / 80,
                              color: Color(0xfffbfef3),
                            ),
                            SizedBox(width: defaultWidth / 40),
                            Container(
                              width: defaultWidth / 4,
                              child: Text(
                                  'Maksimum ukuran file yang diupload adalah 100MB',
                                  style: TextStyle(
                                      fontSize: defaultHeight / 65,
                                      color: Color(0xfffbfef3),
                                  )
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Icon(
                              Icons.fiber_manual_record,
                              size: defaultHeight / 80,
                              color: Color(0xfffbfef3),
                            ),
                            SizedBox(width: defaultWidth / 40),
                            Container(
                              width: defaultWidth / 4,
                              child: Text(
                                  'Jenis file yang diperbolehkan adalah MP3, WAV, dan OGG',
                                  style: TextStyle(
                                    fontSize: defaultHeight / 65,
                                    color: Color(0xfffbfef3),
                                  )
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(defaultWidth / 20, defaultHeight / 15, defaultWidth / 20, 10.0),
              child: Column(
                children: <Widget>[
                  DottedBorder(
                    borderType: BorderType.RRect,
                    radius: Radius.circular(15),
                    strokeWidth: 3.0,
                    dashPattern: [15, 5],
                    color: Color(0xff50c9c0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(120)),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
                          height: defaultHeight / 3.8,
                          width: defaultWidth / 1.3,
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.add, size: defaultHeight / 6, color: Color(0xff50c9c0)),
                              Text(
                                'Klik disini untuk unggah file suara kamu',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Color(0xff50c9c0), fontSize: defaultHeight / 35),
                              ),
                            ],
                          ),
                        ),  
                      ),
                    ),
                  SizedBox(height: defaultHeight / 20),
                  RaisedButton(
                    onPressed: (){},
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    color: Color(0xff50c9c0),
                    child: Container(
                      width: defaultWidth / 3,
                      child: Text(
                        'KIRIM',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xffffffff),
                          letterSpacing: 2.0,
                          fontSize: defaultHeight / 45,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
