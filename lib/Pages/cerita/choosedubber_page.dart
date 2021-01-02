import 'package:dongengku/data.dart';
import 'package:dongengku/template.dart';
import 'package:flutter/material.dart';

class ChooseDubberPage extends StatefulWidget {
  @override
  _ChooseDubberPageState createState() => _ChooseDubberPageState();
}

class _ChooseDubberPageState extends State<ChooseDubberPage> {
  @override
  Widget build(BuildContext context) {
    double defaultWidth = MediaQuery.of(context).size.width;
    double defaultHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xfffbfef3),
      appBar: AppBar(
        backgroundColor: Color(0xff50c9c0),
        title: Text('Pilih Dubber'),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(defaultHeight / 60),
          child: Column(
            children: <Widget>[
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Card(
                  color: Color(0xff50c9c0),
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(defaultHeight / 80),
                    child: Row(
                      children: <Widget>[
                        SizedBox(
                          width: defaultWidth / 20,
                        ),
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/profile_images/profil_default.png'),
                          radius: defaultHeight / 18,
                        ),
                        SizedBox(
                          width: defaultWidth / 16,
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Pak Raden',
                                style: TextStyle(
                                  fontSize: defaultHeight / 40,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xfffbfef3),
                                ),
                              ),
                              SizedBox(
                                height: defaultHeight / 80,
                              ),
                              Text(
                                '\"Mari Berdongeng Bersama Pak Raden\"',
                                style: TextStyle(
                                  fontSize: defaultHeight / 70,
                                  fontStyle: FontStyle.italic,
                                  color: Color(0xfffbfef3),
                                ),
                              ),
                              SizedBox(
                                height: defaultHeight / 80,
                              ),
                              Text(
                                'Pak Raden si Dubber yang selalu ada',
                                style: TextStyle(
                                  fontSize: defaultHeight / 70,
                                  fontStyle: FontStyle.italic,
                                  color: Color(0xfffbfef3),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                children: daftar_2.map((pengguna) => CardChooseDubber(pengguna: pengguna)).toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
