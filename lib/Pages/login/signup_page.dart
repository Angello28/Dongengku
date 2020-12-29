import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:dongengku/Pages/login/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dongengku/Pages/beranda/bottom_navigation.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool checkValue = false;

  @override
  Widget build(BuildContext context) {
    double defaultWidth = MediaQuery.of(context).size.width;
    double defaultHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Color(0xff50c9c0),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: defaultWidth / 15),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(height: defaultHeight / 10),
            Text(
                'Sign Up',
                style: TextStyle(
                  color: Colors.white,
                    fontSize: defaultHeight / 15,
                ),
            ),
            SizedBox(height: defaultHeight / 100),
            Container(
              child: Card(
                elevation: 0.0,
                color: Color(0xfffbfef3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: defaultWidth / 20, vertical: defaultHeight / 55),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            'Username',
                            style: TextStyle(
                                color: Color(0xff50c9c0),
                                fontWeight: FontWeight.w500,
                                fontSize: defaultHeight / 50
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: defaultHeight / 100),
                      Card(
                        elevation: 0.0,
                        shape: StadiumBorder(
                          side: BorderSide(
                            color: Color(0xff50c9c0),
                            width: 1.5,
                          ),
                        ),
                        child: Padding(
                          padding : EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                          child: Container(
                            height: defaultHeight / 16,
                            child: TextField(
                              style: TextStyle(
                                color: Color(0xff50c9c0),
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            'Password',
                            style: TextStyle(
                                color: Color(0xff50c9c0),
                                fontWeight: FontWeight.w500,
                                fontSize: defaultHeight / 50
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: defaultHeight / 100),
                      Card(
                        elevation: 0.0,
                        shape: StadiumBorder(
                          side: BorderSide(
                            color: Color(0xff50c9c0),
                            width: 1.5,
                          ),
                        ),
                        child: Padding(
                          padding : EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                          child: Container(
                            height: defaultHeight / 16,
                            child: TextField(
                              obscureText: true,
                              style: TextStyle(
                                color: Color(0xff50c9c0),
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            'Email',
                            style: TextStyle(
                                color: Color(0xff50c9c0),
                                fontWeight: FontWeight.w500,
                                fontSize: defaultHeight / 50
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: defaultHeight / 100),
                      Card(
                        elevation: 0.0,
                        shape: StadiumBorder(
                          side: BorderSide(
                            color: Color(0xff50c9c0),
                            width: 1.5,
                          ),
                        ),
                        child: Padding(
                          padding : EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                          child: Container(
                            height: defaultHeight / 16,
                            child: TextField(
                              style: TextStyle(
                                color: Color(0xff50c9c0),
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: defaultHeight / 50),
                      Container(
                        height: defaultHeight / 14,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Theme(
                              child: Checkbox(
                                value: checkValue,
                                onChanged: (value) {
                                  setState(() {
                                    checkValue = value;
                                  });
                                },
                                activeColor: Color(0xff50c9c0),
                              ),
                              data: ThemeData(
                                unselectedWidgetColor: Color(0xff50c9c0),// Your color
                              ),
                            ),
                            Container(
                              width: defaultWidth / 2,
                              child: RichText(
                                text: TextSpan(
                                    text: 'Dengan mengklik ini, saya setuju dengan ',
                                    style: TextStyle(color: Color(0xff50c9c0)),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'syarat dan ketentuan',
                                        style: TextStyle(color: Color(0xfffdb9c4)),
                                      ),
                                    ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: defaultHeight / 40),
                      RaisedButton(
                        onPressed: (){
                          Navigator.pop(context);
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context) => BottomNavigation()),
                          );
                        },
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        color: Color(0xff50c9c0),
                        child: Container(
                          width: defaultWidth / 3,
                          child: Text(
                            'DAFTAR',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xffffffff),
                              letterSpacing: 2.0,
                              fontSize: defaultHeight / 45,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Container(
                        height: defaultHeight / 32,
                        width: defaultWidth / 1.5,
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Sudah punya akun?',
                                  style: TextStyle(
                                      color: Color(0xff50c9c0),
                                      fontWeight: FontWeight.w500,
                                      fontSize: defaultHeight / 60
                                  ),
                                ),
                                WidgetSpan(
                                    child: Container(
                                      width: defaultWidth / 7,
                                      height: defaultHeight / 50.5,
                                      child: FlatButton(
                                        padding: EdgeInsets.all(0.0),
                                        onPressed: (){
                                          Navigator.push(context,
                                            MaterialPageRoute(builder: (context) => LoginPage()),
                                          );
                                        },
                                        child: Text(
                                          'Masuk',
                                          style: TextStyle(
                                              color: Color(0xfffdb9c4),
                                              fontWeight: FontWeight.w500,
                                              fontSize: defaultHeight / 60
                                          ),
                                        ),
                                      ),
                                    )
                                )
                              ]
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: defaultHeight / 100),
          ],
        ),
      ),
    );
  }
}
