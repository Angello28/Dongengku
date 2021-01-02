import 'package:flutter/material.dart';
import 'package:dongengku/Pages/cerita/geography_page.dart';

class EncyclopediaPage extends StatefulWidget {
  @override
  _EncyclopediaPageState createState() => _EncyclopediaPageState();
}

class _EncyclopediaPageState extends State<EncyclopediaPage> {
  @override
  Widget build(BuildContext context) {
    double defaultWidth = MediaQuery.of(context).size.width;
    double defaultHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            height: defaultHeight / 2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25.0), bottomRight: Radius.circular(25.0)),
              image: DecorationImage(
                image: AssetImage('assets/others/danau toba.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Card(
              margin: EdgeInsets.zero,
              elevation: 0.0,
              color: Color(0x88515151),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25.0), bottomRight: Radius.circular(25.0)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: defaultHeight / 16),
                  IconButton(
                      icon: Icon(Icons.arrow_back),
                      iconSize: defaultHeight / 32,
                      color: Colors.white,
                      onPressed: (){
                        Navigator.pop(context);
                      }
                  ),
                  Container(
                    padding: EdgeInsets.only(left: defaultWidth / 8),
                    width: defaultWidth / 1.1,
                    child: Column(
                      children: <Widget>[
                        Text(
                          'SUMATRA UTARA',
                          style: TextStyle(
                            fontSize: defaultHeight / 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2.0
                          ),
                        ),
                        SizedBox(height: defaultHeight / 40),
                        Text(
                          'Sumatra Utara adalah sebuah provinsi di Indonesia yang terletak di bagian utara Pulau Sumatra. Provinsi ini beribu kota di Medan. Luas wilayahnya 72.981 km2. Sumatra Utara adalah provinsi dengan jumlah penduduk terbesar keempat setelah Jawa Barat, Jawa Timur, dan Jawa Tengah, dan pada tahun 2019, jumlah penduduknya adalah sebesar 14.908.036 jiwa. ',
                          style: TextStyle(
                              fontSize: defaultHeight / 60,
                              color: Colors.white,
                              letterSpacing: 1.0
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                SizedBox(height: defaultHeight / 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:<Widget>[
                    InkWell(
                      onTap: (){
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => GeographyPage()),
                        );
                      },
                      child: Container(
                        height: defaultHeight / 5,
                        width: defaultHeight / 5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          image: DecorationImage(
                            image: AssetImage('assets/others/geo.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Card(
                          margin: EdgeInsets.zero,
                          elevation: 0.0,
                          color: Color(0xbb515151),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(height: defaultHeight / 20),
                              Text(
                                'GEOGRAFIS',
                                style: TextStyle(
                                    fontSize: defaultHeight / 45,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 2.0
                                ),
                              ),
                              SizedBox(height: defaultHeight / 15),
                              Text('Klik untuk membaca',
                                style: TextStyle(
                                    fontSize: defaultHeight / 75,
                                    color: Colors.white,
                                    letterSpacing: 2.0
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: defaultHeight / 5,
                      width: defaultHeight / 5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        image: DecorationImage(
                          image: AssetImage('assets/others/sejarah.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Card(
                        margin: EdgeInsets.zero,
                        elevation: 0.0,
                        color: Color(0xbb515151),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(height: defaultHeight / 20),
                            Text('SEJARAH',
                              style: TextStyle(
                                  fontSize: defaultHeight / 45,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 2.0
                              ),
                            ),
                            SizedBox(height: defaultHeight / 15),
                            Text('Klik untuk membaca',
                              style: TextStyle(
                                  fontSize: defaultHeight / 75,
                                  color: Colors.white,
                                  letterSpacing: 2.0
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]
                ),
                SizedBox(height: defaultHeight / 30),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:<Widget>[
                      Container(
                        height: defaultHeight / 5,
                        width: defaultHeight / 5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          image: DecorationImage(
                            image: AssetImage('assets/others/tortor.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Card(
                          margin: EdgeInsets.zero,
                          elevation: 0.0,
                          color: Color(0xbb515151),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(height: defaultHeight / 20),
                              Text('BUDAYA',
                                style: TextStyle(
                                    fontSize: defaultHeight / 45,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 2.0
                                ),
                              ),
                              SizedBox(height: defaultHeight / 15),
                              Text('Klik untuk membaca',
                                style: TextStyle(
                                    fontSize: defaultHeight / 75,
                                    color: Colors.white,
                                    letterSpacing: 2.0
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: defaultHeight / 5,
                        width: defaultHeight / 5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          image: DecorationImage(
                            image: AssetImage('assets/others/wisata.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Card(
                          margin: EdgeInsets.zero,
                          elevation: 0.0,
                          color: Color(0xbb515151),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(height: defaultHeight / 20),
                              Text('WISATA',
                                style: TextStyle(
                                    fontSize: defaultHeight / 45,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 2.0
                                ),
                              ),
                              SizedBox(height: defaultHeight / 15),
                              Text('Klik untuk membaca',
                                style: TextStyle(
                                    fontSize: defaultHeight / 75,
                                    color: Colors.white,
                                    letterSpacing: 2.0
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
