import 'package:dongengku/Pages/profil/upload_dubber_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:dongengku/Pages/login/login_page.dart';
import 'package:dongengku/Pages/profil/bookcase_page.dart';
import 'package:dongengku/Pages/profil/paymentinfo_page.dart';
import 'package:dongengku/Pages/profil/guide_page.dart';
import 'package:dongengku/data.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    double defaultWidth = MediaQuery.of(context).size.width;
    double defaultHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xffede9ce),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(defaultWidth / 20, defaultHeight / 9, defaultWidth / 20, defaultHeight / 50),
              color: Color(0xff50c9c0),
              height: defaultHeight / 4.5,
              child: ColumnSuper(
                outerDistance: 0.0,
                children: <Widget>[
                  Card(
                    elevation: 0.0,
                    color: Color(0xfffbfef3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(defaultWidth / 30, defaultHeight / 100, 0.0, defaultHeight / 100),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage('assets/profile_images/${pengguna_7.profilPic}'),
                                radius: defaultHeight / 20,
                              ),
                              Container(
                                margin: EdgeInsets.only(top: defaultHeight / 70, right: defaultWidth / 30),
                                child: Row(
                                  children: <Widget>[
                                    ImageIcon(
                                      AssetImage('assets/icons/icon_star.png'),
                                      color: Color(0xfff1c40f),
                                      size: defaultHeight / 40,
                                    ),
                                    Text(
                                      pengguna_7.rating.toString(),
                                      style: TextStyle(
                                        color: Color(0xffac890d),
                                        fontSize: defaultHeight / 50,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: defaultWidth / 30),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  ' ${pengguna_7.namaDepan} ${pengguna_7.namaBelakang}',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: defaultHeight / 45,
                                  ),
                                ),
                                SizedBox(height: defaultHeight / 120),
                                Text(
                                  ' ID : ${pengguna_7.id}',
                                  style: TextStyle(
                                    fontSize: defaultHeight / 60,
                                  ),
                                ),
                                SizedBox(height: defaultHeight / 130),
                                Row(
                                  children: <Widget>[
                                    Card(
                                      color: Color(0xffff0707),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15.0),
                                      ),
                                      child: Container(
                                        padding: EdgeInsets.fromLTRB(defaultWidth / 30, defaultHeight / 150, defaultWidth / 30, defaultHeight / 150),
                                        child: Text(
                                          pengguna_7.peringkatSebagaiPembaca,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xffffffff),
                                            fontSize: defaultHeight / 80,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Card(
                                      color: Color(0xff00728b),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15.0),
                                      ),
                                      child: Container(
                                        padding: EdgeInsets.fromLTRB(defaultWidth / 30, defaultHeight / 150, defaultWidth / 30, defaultHeight / 150),
                                        child: Text(
                                          pengguna_7.peringkatSebagaiDubber,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xffffffff),
                                            fontSize: defaultHeight / 80,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: defaultHeight / 120),
                                Container(
                                  child: Row(
                                    children: <Widget>[
                                      SizedBox(width: 8.0),
                                      ImageIcon(
                                          AssetImage('assets/icons/icon_book.png'),
                                          size: defaultHeight / 45,
                                      ),
                                      SizedBox(width: 8.0),
                                      Text(
                                        pengguna_7.jumlahBukuDibaca.toString(),
                                        style: TextStyle(
                                          fontSize: defaultHeight / 60
                                        ),
                                      ),
                                      SizedBox(width: 20.0),
                                      ImageIcon(
                                        AssetImage('assets/icons/icon_headphone.png'),
                                        size: defaultHeight / 45,
                                      ),
                                      SizedBox(width: 8.0),
                                      Text(
                                        pengguna_7.jumlahDidengar.toString(),
                                        style: TextStyle(
                                            fontSize: defaultHeight / 60
                                        ),
                                      ),
                                      SizedBox(width: 20.0),
                                      ImageIcon(
                                        AssetImage('assets/icons/icon_poin.png'),
                                        size: defaultHeight / 45,
                                      ),
                                      SizedBox(width: 8.0),
                                      Text(
                                        pengguna_7.jumlahPoin.toString(),
                                        style: TextStyle(
                                            fontSize: defaultHeight / 60
                                        ),
                                      ),
                                      SizedBox(width: 8.0),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: defaultHeight / 20,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(defaultHeight / 40, defaultHeight / 60, defaultHeight / 40, defaultHeight / 60),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Card(
                      elevation: 0.0,
                      color: Color(0xfffbfef3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(defaultHeight / 40),
                        child: Column(
                          children: <Widget>[
                            InkWell(
                              onTap: (){
                                Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => UploadDubber()),
                                );
                              },
                              child: Container(
                                padding: EdgeInsets.only(left: defaultWidth / 20),
                                child: Row(
                                  children: <Widget>[
                                    Image(
                                      image: AssetImage('assets/icons/icon_microphone.png'),
                                      height: defaultHeight / 18,
                                    ),
                                    SizedBox(width: defaultWidth / 15),
                                    Text(
                                      'Unggah Dubbing',
                                      style: TextStyle(
                                        fontSize: defaultHeight / 40,
                                        color: Color(0xff515151),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 2.0,
                              height: defaultHeight / 20,
                            ),
                            InkWell(
                              onTap: (){
                                Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => BookCasePage()),
                                );
                              },
                              child: Container(
                                padding: EdgeInsets.only(left: defaultWidth / 20),
                                child: Row(
                                  children: <Widget>[
                                    Image(
                                      image: AssetImage('assets/icons/icon_bookcase.png'),
                                      height: defaultHeight / 18,
                                    ),
                                    SizedBox(width: defaultWidth / 15),
                                    Text(
                                      'Lemari Buku',
                                      style: TextStyle(
                                        fontSize: defaultHeight / 40,
                                        color: Color(0xff515151),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 2.0,
                              height: defaultHeight / 20
                            ),
                            InkWell(
                              onTap: (){
                                Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => PaymentInfoPage()),
                                );
                              },
                              child: Container(
                                padding: EdgeInsets.only(left: defaultWidth / 20),
                                child: Row(
                                  children: <Widget>[
                                    Image(
                                      image: AssetImage('assets/icons/icon_money.png'),
                                      height: defaultHeight / 18,
                                    ),
                                    SizedBox(width: defaultWidth / 15),
                                    Text(
                                      'Info Pembayaran',
                                      style: TextStyle(
                                        fontSize: defaultHeight / 40,
                                        color: Color(0xff515151),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 2.0,
                              height: defaultHeight / 20,
                            ),
                            InkWell(
                              onTap: (){
                                Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => GuidePage()),
                                );
                              },
                              child: Container(
                                padding: EdgeInsets.only(left: defaultWidth / 20),
                                child: Row(
                                  children: <Widget>[
                                    Image(
                                      image: AssetImage('assets/icons/icon_info.png'),
                                      height: defaultHeight / 18,
                                    ),
                                    SizedBox(width: defaultWidth / 15),
                                    Text(
                                      'Panduan Pengguna',
                                      style: TextStyle(
                                        fontSize: defaultHeight / 40,
                                        color: Color(0xff515151),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 2.0,
                              height: defaultHeight / 20,
                            ),
                            InkWell(
                              onTap: (){
                                Navigator.pop(context);
                                Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => LoginPage()),
                                );
                              },
                              child: Container(
                                padding: EdgeInsets.only(left: defaultWidth / 15),
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.logout,
                                      size: defaultWidth / 8,
                                      color: Color(0xff515151),
                                    ),
                                    SizedBox(width: defaultWidth / 30),
                                    Text(
                                      'Keluar',
                                      style: TextStyle(
                                        fontSize: defaultHeight / 40,
                                        color: Color(0xff515151),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: defaultWidth / 3,
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.only(right: defaultWidth / 1.9, top: defaultHeight / 40, bottom: defaultHeight / 70),
                      child: RaisedButton(
                        onPressed: (){Navigator.pop(context);},
                        elevation: 0.0,
                        shape: StadiumBorder(
                          side: BorderSide(
                            color: Color(0xff515151),
                            width: 1.5,
                          ),
                        ),
                        color: Color(0xffede9ce),
                        child: Container(
                          width: 60.0,
                          child: Text(
                            'Kembali',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xff515151),
                              letterSpacing: 2.0,
                              fontSize: 12.0,
                            ),
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
      ),
    );
  }
}
