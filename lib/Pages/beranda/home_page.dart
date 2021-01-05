import 'package:dongengku/Pages/beranda/dubberlist_page.dart';
import 'package:dongengku/template.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dongengku/data.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double defaultWidth = MediaQuery.of(context).size.width;
    double defaultHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xff50c9c0),
      body: Padding(
        padding: EdgeInsets.fromLTRB(defaultWidth / 30, defaultHeight / 12, defaultWidth / 30, 0.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              Card(
                elevation: 0.0,
                color: Color(0xfffbfef3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: EdgeInsets.all(defaultWidth / 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              'Selamat datang di Dongengku,\nBaca apa kita hari ini?',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Inter',
                                fontSize: defaultHeight / 50,
                              ),
                            ),
                            SizedBox(
                              height: defaultHeight / 90,
                            ),
                            Text(
                              'Senin, 7 Desember 2020\nSudah 1 bulan sejak kamu bergabung bersama kami',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: defaultHeight / 80,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: defaultWidth / 30,
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/profile_images/profil_7.png'),
                        radius: defaultHeight / 20,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: defaultHeight / 30,
              ),
              Card(
                elevation: 0.0,
                margin: EdgeInsets.only(bottom: defaultHeight / 50),
                color: Color(0xfffbfef3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: EdgeInsets.all(defaultWidth / 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Dubber Terbaik',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: defaultHeight / 40,
                        ),
                      ),
                      Divider(
                        thickness: 1.0,
                        height: defaultHeight / 20,
                        color: Color(0xff9d9d9d),
                      ),
                      Container(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: daftar_1.map((pengguna) => DubberTerbaikHome(pengguna: pengguna,)).toList()
                          ),
                        ),
                      ),
                      SizedBox(
                        height: defaultHeight / 100,
                      ),
                      FlatButton(
                        padding: EdgeInsets.all(0.0),
                        onPressed: (){
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context) => DubberListPage()),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              'Lainnya',
                              style: TextStyle(
                                fontSize: defaultHeight / 50,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_rounded,
                              size: defaultWidth / 20,
                            )
                          ],
                        ),
                      ),
                      Text(
                        'Populer',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: defaultHeight / 40,
                        ),
                      ),
                      Divider(
                        thickness: 1.0,
                        height: defaultHeight / 20,
                        color: Color(0xff9d9d9d),
                      ),
                      Container(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: daftarDongeng1.map((dongeng) => CardDongengHome(dongeng: dongeng)).toList()
                          ),
                        ),
                      ),
                      FlatButton(
                        padding: EdgeInsets.all(0.0),
                        onPressed: (){},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              'Lainnya',
                              style: TextStyle(
                                fontSize: defaultHeight / 50,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_rounded,
                              size: defaultWidth / 20,
                            )
                          ],
                        ),
                      ),
                      Text(
                        'Daerah Anda',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: defaultHeight / 40,
                        ),
                      ),
                      Divider(
                        thickness: 1.0,
                        height: defaultHeight / 20,
                        color: Color(0xff9d9d9d),
                      ),
                      Container(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: daftarDongeng2.map((dongeng) => CardDongengHome(dongeng: dongeng)).toList()
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
