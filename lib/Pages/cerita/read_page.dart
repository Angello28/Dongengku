import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:dongengku/Pages/cerita/soundeffect_page.dart';

class ReadPage extends StatefulWidget {
  @override
  _ReadPageState createState() => _ReadPageState();
}

class _ReadPageState extends State<ReadPage> {
  bool playing = false;
  IconData playbtn = Icons.play_circle_fill_rounded;

  AudioCache cache;
  AudioPlayer player;

  Duration position = new Duration();
  Duration musicLength = new Duration();

  Widget slider(double size){
    return Container(
      width: size,
      child: Slider.adaptive(
        activeColor: Color(0xff50c9c0),
        inactiveColor: Colors.grey[350],
        value: position.inSeconds.toDouble(),
        max: musicLength.inSeconds.toDouble(),
        onChanged: (value){
          seekToSec(value.toInt());
        }),
    );
  }
  void seekToSec(int sec){
    Duration newPos = Duration(seconds: sec);
    player.seek(newPos);
  }

  void initState() {
    super.initState();
    player = AudioPlayer();
    cache = AudioCache(fixedPlayer: player);

    player.durationHandler = (d){
      setState(() {
        musicLength = d;
      });
    };
    player.positionHandler = (p){
      setState(() {
        position = p;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    double defaultWidth = MediaQuery.of(context).size.width;
    double defaultHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xff50c9c0),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xff50c9c0),
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
            Expanded(
              child: Container(
                child: Swiper.children(
                  loop: false,
                  control: SwiperControl(
                      color: Color(0xfffbfef3),
                      padding: EdgeInsets.all(defaultHeight / 60),
                      size: defaultHeight / 45
                  ),
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: defaultWidth / 5, right: defaultWidth / 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Alkisah pada zaman dahulu kala di suatu desa Sumatera Utara hiduplah seorang petani yang bernama Toba yang menyendiri di sebuah lembah yang landai dan subur. Petani itu mengerjakan lahan pertaniannya untuk keperluan hidupnya.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: defaultHeight / 45,
                                color: Color(0xfffbfef3)
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: defaultWidth / 5, right: defaultWidth / 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Selain mengerjakan ladangnya, kadang-kadang lelaki itu pergi memancing ke sungai yang berada tak jauh dari rumahnya. Setiap kali dia memancing, mudah saja ikan didapatnya karena di sungai yang jernih itu memang banyak sekali ikan. Ikan hasil pancingannya dia masak untuk dimakan.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: defaultHeight / 45,
                                color: Color(0xfffbfef3)
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: defaultWidth / 5, right: defaultWidth / 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Pada suatu sore, setelah pulang dari ladang lelaki itu langsung pergi ke sungai untuk memancing. Tetapi sudah cukup lama ia memancing tak seekor iakan pun didapatnya. Kejadian yang seperti itu,tidak pernah dialami sebelumnya. Sebab biasanya ikan di sungai itu mudah saja dia pancing.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: defaultHeight / 45,
                                color: Color(0xfffbfef3)
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: defaultWidth / 5, right: defaultWidth / 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Karena sudah terlalu lama tak ada yang memakan umpan pancingnya, dia jadi kesal dan memutuskan untuk berhenti saja memancing. Tetapi ketika dia hendak menarik pancingnya, tiba-tiba pancing itu disambar ikan yang langsung menarik pancing itu jauh ketengah sungai. Hatinya yang tadi sudah kesal berubah menjadi gembira, Karena dia tahu bahwa ikan yang menyambar pancingnya itu adalah ikan yang besar.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: defaultHeight / 45,
                                color: Color(0xfffbfef3)
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: defaultWidth / 5, right: defaultWidth / 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Setelah beberapa lama dia biarkan pancingnya ditarik ke sana kemari, barulah pancing itu disentakkannya, dan tampaklah seekor ikan besar tergantung dan menggelepar-gelepar di ujung tali pancingnya. Dengan cepat ikan itu ditariknya ke darat supaya tidak lepas. Sambil tersenyum gembira mata pancingnya dia lepas dari mulut ikan itu.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: defaultHeight / 45,
                                color: Color(0xfffbfef3)
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: defaultHeight / 4,
              child: Card(
                margin: EdgeInsets.zero,
                elevation: 0.0,
                color: Color(0xfffbfef3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(35.0), topRight: Radius.circular(35.0)),
                ),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: defaultHeight / 40),
                      Text(
                        'Legenda Danau Toba',
                        style: TextStyle(
                          color: Color(0xff515151),
                          fontWeight: FontWeight.bold,
                          fontSize: defaultHeight / 30,
                          letterSpacing: 1.0,
                        ),
                      ),
                      SizedBox(height: defaultHeight / 60),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${position.inMinutes}:${position.inSeconds.remainder(60)}',
                            style: TextStyle(
                              fontSize: defaultHeight / 60,
                            ),
                          ),
                          slider(defaultWidth / 1.3),
                          Text(
                            '${musicLength.inMinutes}:${musicLength.inSeconds.remainder(60)}',
                            style: TextStyle(
                              fontSize: defaultHeight / 60,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.stop_circle_outlined),
                            iconSize: defaultHeight / 20,
                            color: Colors.red,
                            onPressed: (){
                              if(playing){
                                player.stop();
                                setState(() {
                                  playbtn = Icons.play_circle_fill_rounded;
                                  playing = false;
                                });
                              }
                            },
                          ),
                          IconButton(
                            onPressed: (){},
                            icon: Icon(
                              Icons.replay_10_rounded,
                              color: Color(0xff515151),
                              size: defaultHeight / 25,
                            ),
                          ),
                          IconButton(
                             icon: Icon(playbtn),
                             iconSize: defaultHeight / 15,
                             color: Color(0xff50c9c0),
                             onPressed: (){
                               if(!playing){
                                 cache.play("call_you_mine.mp3");
                                 setState(() {
                                   playbtn = Icons.pause_circle_filled_rounded;
                                   playing = true;
                                 });
                               }
                               else{
                                 player.pause();
                                 setState(() {
                                   playbtn = Icons.play_circle_fill_rounded;
                                   playing = false;
                                 });
                               }
                             }
                          ),
                          IconButton(
                            onPressed: (){},
                            icon: Icon(
                              Icons.forward_10_rounded,
                              color: Color(0xff515151),
                              size: defaultHeight / 25,
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              setState(() {
                                player.stop();
                                playbtn = Icons.play_circle_fill_rounded;
                                playing = false;
                              });
                              Navigator.push(context,
                                MaterialPageRoute(builder: (context) => SoundEffectPage()),
                              );
                            },
                            child: CircleAvatar(
                              radius: defaultHeight / 40,
                              backgroundColor: Color(0xfffdb9c4),
                              backgroundImage: AssetImage('assets/icons/icon_natural.png'),
                            ),
                          ),
                        ],
                      )
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
