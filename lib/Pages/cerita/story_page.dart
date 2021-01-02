import 'dart:ui';
import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:dongengku/Pages/cerita/read_page.dart';
import 'package:dongengku/Pages/cerita/encyclopedia_page.dart';
import 'package:dongengku/Pages/cerita/choosedubber_page.dart';
import 'package:dongengku/data.dart';

class StoryPage extends StatefulWidget {
  final Dongeng dongeng;
  StoryPage({this.dongeng});

  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage>{
  bool stats = false;
  bool playing = false;
  IconData iconSave = Icons.bookmark_border_rounded;
  IconData playbtn = Icons.play_circle_outline_rounded;

  AudioCache cache;
  AudioPlayer player;

  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
    cache = AudioCache(fixedPlayer: player);
  }

  @override
  Widget build(BuildContext context) {
    double defaultWidth = MediaQuery.of(context).size.width;
    double defaultHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xff50c9c0),
      appBar: AppBar(
        backgroundColor: Color(0xff50c9c0),
        elevation: 0.0,
        leading: IconButton(
          icon:Icon(Icons.arrow_back),
          onPressed:() {
            player.stop();
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              child: Card(
                margin: EdgeInsets.zero,
                elevation: 0.0,
                color: Color(0xfffbfef3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(35.0), topRight: Radius.circular(35.0)),
                ),
                child: Container(
                  padding: EdgeInsets.only(left: defaultWidth / 15),
                  height: defaultHeight / 1.7,
                  child: Column(
                    children: [
                      ColumnSuper(
                        outerDistance: -(defaultHeight / 3.55),
                        children: [
                          Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                              SizedBox(width: defaultWidth / 5),
                              Image(
                                image: AssetImage('assets/books/${widget.dongeng.cover}'),
                                height: defaultHeight / 3,
                              ),
                              SizedBox(width: defaultWidth / 20),
                              InkWell(
                                onTap: () {
                                  if(!stats){
                                    setState(() {
                                      iconSave = Icons.bookmark;
                                      stats = true;
                                    });
                                  }
                                  else{
                                    setState(() {
                                      iconSave = Icons.bookmark_border_rounded;
                                      stats = false;
                                    });
                                  }
                                },
                                  child: Icon(
                                    iconSave,
                                    color: Colors.red,
                                    size: defaultHeight / 16,)
                              )
                            ],
                          ),
                          SizedBox(height: defaultHeight / 40),
                          Row(
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    width: defaultWidth / 2,
                                    child: Text(
                                        widget.dongeng.judul,
                                        style: TextStyle(
                                          fontSize: defaultHeight / 33,
                                          fontWeight: FontWeight.bold,
                                        )
                                    ),
                                  ),
                                  SizedBox(height: defaultHeight / 90),
                                  Text(
                                      'Cerita Rakyat ${widget.dongeng.daerah}',
                                      style: TextStyle(
                                        fontSize: defaultHeight / 50,
                                      )
                                  ),
                                  SizedBox(height: defaultHeight / 50),
                                  Text(
                                      'Dengarkan Suara Dubber',
                                      style: TextStyle(
                                        fontSize: defaultHeight / 50,
                                      )
                                  ),
                                ],
                              ),
                              SizedBox(width: defaultWidth / 15),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  FlatButton(
                                    onPressed: (){
                                      setState(() {
                                        player.stop();
                                        playbtn = Icons.play_circle_outline_rounded;
                                        playing = false;
                                      });
                                      Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => EncyclopediaPage()),
                                      );
                                    },
                                    child: Icon(
                                      Icons.lightbulb_outline,
                                      color: Color(0xff515151),
                                      size: defaultHeight / 12,
                                    ),
                                    shape: new CircleBorder(),
                                    color: Color(0xfffff490),
                                  ),
                                  SizedBox(height: defaultHeight / 80),
                                  Text(
                                    'Ensiklopedia',
                                    style: TextStyle(
                                      fontSize: defaultHeight / 60
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: defaultHeight / 70),
                          Row(
                            children: <Widget> [
                              Card(
                                elevation: 0.0,
                                color: Color(0xff50c9c0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                                child: Container(
                                  width: defaultWidth / 2,
                                  child: Row(
                                    children: <Widget>[
                                      IconButton(
                                          icon: Icon(playbtn),
                                          iconSize: defaultHeight / 30,
                                          color: Colors.white,
                                          onPressed: (){
                                            if(!playing){
                                              cache.play("call_you_mine.mp3");
                                              setState(() {
                                                playbtn = Icons.stop_circle_outlined;
                                                playing = true;
                                              });
                                            }
                                            else{
                                              player.stop();
                                              setState(() {
                                                playbtn = Icons.play_circle_outline_rounded;
                                                playing = false;
                                              });
                                            }
                                          }
                                      ),
                                      Container(
                                          width: defaultWidth / 3,
                                          height: defaultHeight / 30,
                                          child: _Musicvisualizer(a: playing)
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: defaultWidth / 30),
                              RaisedButton(
                                onPressed: (){
                                  setState(() {
                                    player.stop();
                                    playbtn = Icons.play_circle_outline_rounded;
                                    playing = false;
                                  });
                                  Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => ChooseDubberPage()),
                                  );
                                },
                                elevation: 0.0,
                                color: Color(0xfffdb9c4),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                                child: Container(
                                  width: defaultWidth / 4.5,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      ImageIcon(
                                        AssetImage('assets/icons/icon_micdubber.png'),
                                        color: Colors.white,
                                        size: defaultHeight / 60,
                                      ),
                                      SizedBox(width: defaultWidth / 60),
                                      Text(
                                        'Pilih Dubber',
                                        style: TextStyle(
                                            fontSize: defaultHeight / 70,
                                            color: Colors.white
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ]
                          ),
                          SizedBox(height: defaultWidth / 30),
                          Container(
                            width: defaultWidth / 1.25,
                            height: defaultHeight / 5.7,
                            child: Text(
                              widget.dongeng.deskripsi,
                              style: TextStyle(fontSize: defaultHeight / 50),
                            ),
                          ),
                          SizedBox(height: defaultWidth / 50),
                          RaisedButton(
                            onPressed: (){
                              setState(() {
                                player.stop();
                                playbtn = Icons.play_circle_outline_rounded;
                                playing = false;
                              });
                              Navigator.push(context,
                                MaterialPageRoute(builder: (context) => ReadPage()),
                              );
                            },
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            color: Color(0xff50c9c0),
                            child: Container(
                              width: defaultWidth / 2,
                              child: Text(
                                'BACA CERITA',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xffffffff),
                                  letterSpacing: 2.0,
                                  fontSize: defaultHeight / 45,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

//-------------------------------------------------------------------------------------------------------

class _Musicvisualizer extends StatelessWidget{
  List<int> duration = [900, 600, 500, 800, 700];
  bool a;
  _Musicvisualizer({this.a});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: new List<Widget>.generate(14, (index) => VisualComponent(duration: duration[index%5], color: Colors.white, state: a)),
    );
  }
}

class VisualComponent extends StatefulWidget {
  const VisualComponent({
    Key key,
    @required this.duration, @required this.color, @required this.state
  }) : super(key: key);

  final int duration;
  final Color color;
  final bool state;

  @override
  _VisualComponentState createState() => _VisualComponentState();
}

class _VisualComponentState extends State<VisualComponent> with SingleTickerProviderStateMixin{
  Animation<double> animation;
  AnimationController animController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animController = AnimationController(duration: Duration(milliseconds: widget.duration), vsync: this);
    final curvedAnimation = CurvedAnimation(parent:animController, curve: Curves.easeInOutSine);

    animation = Tween<double>(begin: 0, end: 100).animate(curvedAnimation)..addListener(() {
      setState(() {

      });
    });
    animController.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 5.0,
      height: widget.state == true ? animation.value : 1.0,
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
