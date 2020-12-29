import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dongengku/template.dart';
import 'package:dongengku/data.dart';

class UploadDubber extends StatefulWidget {
  @override
  _UploadDubberState createState() => _UploadDubberState();
}

class _UploadDubberState extends State<UploadDubber> {
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              color: Color(0xff50c9c0),
              height: defaultHeight / 3.5,
              padding: EdgeInsets.fromLTRB(defaultWidth / 18, defaultHeight / 60, defaultWidth / 18, defaultHeight / 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: defaultWidth / 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            'Mulailah Menjadi Dubber',
                            style: TextStyle(
                              fontSize: defaultHeight / 40,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2.0,
                              color: Color(0xfffbfef3),
                            ),
                        ),
                        SizedBox(height: defaultHeight / 40),
                        Text(
                          'Caranya mudah, cukup pilih dongeng yang ingin kamu isi suaranya, lalu upload hasil rekaman kamu di tempat yang tersedia dan kirimkan, setelah itu kami akan memberikan konfirmasi melalui email jika rekaman kamu berhasil masuk halaman dubber\n\nKami akan memberikan kabar paling lama 10 hari kerja sejak rekaman dikirim',
                          style: TextStyle(
                            fontSize: defaultHeight / 55,
                            color: Color(0xfffbfef3),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(defaultWidth / 30, defaultHeight / 50, defaultWidth / 30, defaultHeight / 50),
              child: Wrap(
                  alignment: WrapAlignment.spaceEvenly,
                  children: daftarDongeng6.map((dongeng) => CardUploadDubber(dongeng: dongeng)).toList()
              ),
            ),
          ],
        ),
      ),
    );
  }
}
