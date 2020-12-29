import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dongengku/data.dart';
import 'package:dongengku/template.dart';

class SoundEffectPage extends StatefulWidget {
  @override
  _SoundEffectPageState createState() => _SoundEffectPageState();
}

class _SoundEffectPageState extends State<SoundEffectPage> {
  @override
  Widget build(BuildContext context) {
    double defaultWidth = MediaQuery.of(context).size.width;
    double defaultHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xfffbfef3),
      appBar: AppBar(
        backgroundColor: Color(0xff50c9c0),
        title: Text('Efek Suara'),
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(defaultHeight / 50),
            height: defaultHeight / 1.5,
            child: Column(
              children: <Row>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: barisEfek1.map((efek) => SoundEffectTemplate(efek: efek)).toList()
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: barisEfek2.map((efek) => SoundEffectTemplate(efek: efek)).toList()
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: barisEfek3.map((efek) => SoundEffectTemplate(efek: efek)).toList()
                ),
              ],
            ),
          ),
          SizedBox(height: defaultHeight / 9),
          RaisedButton(
            onPressed: (){
              Navigator.pop(context);
            },
            elevation: 0.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
            color: Color(0xff50c9c0),
            child: Container(
              width: defaultWidth / 2.5,
              child: Text(
                'GUNAKAN',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xffffffff),
                  letterSpacing: 2.0,
                  fontSize: defaultHeight / 40,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

