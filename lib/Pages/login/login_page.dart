import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dongengku/Pages/beranda/bottom_navigation.dart';
import 'package:dongengku/Pages/login/signup_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double defaultWidth = MediaQuery.of(context).size.width;
    double defaultHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Color(0xff50c9c0),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: defaultWidth / 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(height: defaultHeight / 15),
            CircleAvatar(
              backgroundImage : AssetImage('assets/icons/logo.png'),
              radius: defaultHeight / 9,
            ),
            SizedBox(height: defaultHeight / 40),
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
                            width: 5,
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
                          padding : EdgeInsets.fromLTRB(15, 0.0, 15, 0.0),
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
                          padding : EdgeInsets.fromLTRB(15, 0.0, 15, 0.0),
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
                            'MASUK',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xffffffff),
                              letterSpacing: 2.0,
                              fontSize: defaultHeight / 45,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: defaultHeight / 45),
                      Container(
                        height: defaultHeight / 30,
                        width: defaultWidth,
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Belum punya akun? ',
                                style: TextStyle(
                                    color: Color(0xff50c9c0),
                                    fontWeight: FontWeight.w500,
                                    fontSize: defaultHeight / 60
                                ),
                              ),
                              WidgetSpan(
                                  child: Container(
                                    width: defaultWidth / 6,
                                    height: defaultHeight / 50,
                                    child: FlatButton(
                                      padding: EdgeInsets.all(0.0),
                                      onPressed: (){
                                        Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => SignUpPage()),
                                        );
                                      },
                                      child: Text(
                                        'Buat akun',
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
            SizedBox(height: defaultHeight / 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: defaultWidth / 3,
                  height: 0.5,
                  color: Color(0xfffbfef3),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                    'atau',
                    style: TextStyle(
                      color: Color(0xfffbfef3),
                      fontWeight: FontWeight.w500,
                      fontSize: defaultHeight / 50
                    ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: defaultWidth / 3,
                  height: 0.5,
                  color: Color(0xfffbfef3),
                ),
              ],
            ),
            SizedBox(height: defaultHeight / 50),
            RaisedButton(
                onPressed: (){},
                elevation: 0.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                color: Color(0xff3c5a99),
                child: Container(
                  width: defaultWidth,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.fromLTRB(0.0, 20, 0.0, 20)),
                      Image(
                          image : AssetImage('assets/icons/facebook.png'),
                          width: defaultWidth / 18,
                      ),
                      SizedBox(
                        width: defaultWidth / 18,
                      ),
                      Text(
                        'Masuk dengan Facebook',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 1.0,
                            fontSize: defaultHeight / 45,
                        ),
                      ),
                    ],
                  ),
                ),
            ),
            SizedBox(height: defaultHeight / 200),
            RaisedButton(
              onPressed: (){},
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
              color: Colors.white,
              child: Container(
                width: defaultWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.fromLTRB(0.0, 20, 0.0, 20)),
                    Image(
                      image : AssetImage('assets/icons/google.png'),
                      width: defaultWidth / 18,
                    ),
                    SizedBox(
                      width: defaultWidth / 18,
                    ),
                    Text(
                      'Masuk dengan Google',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color(0xff515151),
                        letterSpacing: 1.0,
                        fontSize: defaultHeight / 45,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: defaultHeight / 160),
          ],
        ),
      ),
    );
  }
}
