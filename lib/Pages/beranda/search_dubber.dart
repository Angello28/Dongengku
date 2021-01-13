import 'package:dongengku/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:dongengku/template.dart';

class SearchDubber extends StatefulWidget {
  @override
  _SearchDubberState createState() => _SearchDubberState();
}

TextEditingController SearchDubberController = new TextEditingController();
class _SearchDubberState extends State<SearchDubber> {
  @override
  Widget build(BuildContext context) {
    double defaultWidth = MediaQuery.of(context).size.width;
    double defaultHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Color(0xff50c9c0),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(defaultWidth / 20, defaultHeight / 10, defaultWidth / 20, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[

                Card(
                  color: Color(0xffffffff),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Padding(
                    padding : EdgeInsets.fromLTRB(defaultWidth / 20, 0.0, 0.0, 0.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: defaultWidth / 1.5,
                          child: TextField(
                            controller: SearchDubberController ,

                            decoration: InputDecoration(
                              hintText: 'Cari Dubber',
                              hintStyle: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: defaultHeight / 50,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        Container(
                          width: 1,
                          height: defaultHeight / 30,
                          margin: EdgeInsets.only(right: defaultWidth / 100),
                          color: Color(0xff515151),
                        ),
                        IconButton(
                          onPressed: (){
                            FocusScope.of(context).requestFocus(new FocusNode());
                          },
                          icon: Icon(
                            Icons.search,
                            size: defaultWidth / 15,
                          ),
                          color: Color(0xff515151),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(defaultWidth / 20, 0.0, defaultWidth / 20, 0.0),
              child: SingleChildScrollView(
                child: Container(
                    child: Column(
                      children: [
                        Card(
                          elevation: 0.0,
                          color: Color(0xfffbfef3),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: daftar_3.map((pengguna) => CardSearchDubber(pengguna: pengguna, Teks : SearchDubberController.text)).toList()
                          ),
                        ),
                        SizedBox(height: defaultHeight / 70),
                      ],
                    )
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
