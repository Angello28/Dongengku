import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class GuidePage extends StatefulWidget {
  @override
  _GuidePageState createState() => _GuidePageState();
}

class _GuidePageState extends State<GuidePage> {

  @override
  Widget build(BuildContext context) {
    double defaultWidth = MediaQuery.of(context).size.width;
    double defaultHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xff515151),
        ),
        elevation: 0.0,
        backgroundColor: Color(0xffffffff),
      ),
      body: Swiper.children(
        loop: false,
        pagination: SwiperPagination(
            builder: DotSwiperPaginationBuilder(
                color: Color(0xffcbcbcb),
                activeColor: Color(0xff515151),
                size: defaultHeight / 60,
                activeSize: defaultHeight / 55
            ),
        ),
        control: SwiperControl(
          color: Color(0xff515151),
          padding: EdgeInsets.all(defaultHeight / 60),
          size: defaultHeight / 40
        ),
        children: <Widget>[
          Container(
              padding: EdgeInsets.fromLTRB(defaultWidth / 10, defaultHeight / 40, defaultWidth / 10, 0.0),
              child: Column(
                children: <Widget>[
                  Image(
                      image: AssetImage('assets/icons/logo.png'),
                      width: defaultHeight / 3.5,
                  ),
                  Text(
                      'Selamat Datang di Panduan Pengguna',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: defaultHeight / 25,
                          fontWeight: FontWeight.bold
                      )
                  ),
                  SizedBox(height: defaultHeight / 10),
                  RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: "Klik ",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: defaultHeight / 40,
                              )
                          ),
                          WidgetSpan(
                              child: Icon(Icons.arrow_forward_ios_rounded, size: defaultHeight / 40),
                          ),
                          TextSpan(
                              text: " untuk lanjut ke halaman selanjutnya dan klik ",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: defaultHeight / 40,
                              )
                          ),
                          WidgetSpan(
                            child: Icon(Icons.arrow_back_ios_rounded, size: defaultHeight / 40),
                          ),
                          TextSpan(
                              text: " untuk kembali ke halaman sebelumnya",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: defaultHeight / 40,
                              )
                          ),
                        ],
                      ),
                  ),
                ],
              ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                SizedBox(height: defaultHeight / 7),
                Icon(Icons.android, color: Colors.lightGreen, size: defaultHeight / 8),
                Text('Masih dalam tahap pembangunan', style: TextStyle(fontSize: defaultHeight / 40),)
              ],
            ),
          ),
        ],
      )
    );
  }
}
