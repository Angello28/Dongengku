import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/rendering.dart';
import 'package:dongengku/data.dart';
import 'package:dongengku/method.dart';
import 'package:dongengku/template.dart';

class DubberDetailPage extends StatefulWidget {
  final Pengguna pengguna;
  DubberDetailPage({this.pengguna});

  @override
  _DubberDetailPageState createState() => _DubberDetailPageState();
}

class _DubberDetailPageState extends State<DubberDetailPage> {
  @override
  Widget build(BuildContext context) {
    double defaultWidth = MediaQuery.of(context).size.width;
    double defaultHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xffede9ce),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xff515151),
        ),
        elevation: 0.0,
        backgroundColor: Color(0xff50c9c0),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              color: Color(0xff50c9c0),
              height: defaultHeight / 3.5,
              child: ColumnSuper(
                outerDistance: 0.0,
                children: <Widget>[
                  Card(
                    margin: EdgeInsets.fromLTRB(defaultWidth / 20, defaultHeight / 100, defaultWidth / 20, defaultHeight / 40),
                    elevation: 0.0,
                    color: Color(0xfffbfef3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(defaultWidth / 20, defaultHeight / 40, defaultWidth / 20, defaultHeight / 40),
                      child: Column(
                        children: <Widget>[
                          ColumnSuper(
                            outerDistance: -(defaultHeight / 26),
                            children: [
                              Visibility(
                                maintainSize: true,
                                maintainAnimation: true,
                                maintainState: true,
                                visible: widget.pengguna == pengguna_1 ? true : false,
                                child: Container(
                                  margin: EdgeInsets.only(left: defaultWidth / 2),
                                  child: ImageIcon(
                                    AssetImage('assets/icons/icon_warranty.png'),
                                    size: defaultHeight / 12,
                                    color: Color(0xfff1c60f),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/profile_images/${widget.pengguna.profilPic}'),
                            radius: defaultHeight / 19,
                          ),
                          SizedBox(
                            height: defaultHeight / 90,
                          ),
                          Text(
                            '${widget.pengguna.namaDepan} ${widget.pengguna.namaBelakang}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize : defaultHeight / 40,
                            ),
                          ),
                          SizedBox(
                            height: defaultHeight / 100,
                          ),
                          Text(
                            'Bergabung sejak ${widget.pengguna.bergabung.day} ${monthToString(widget.pengguna.bergabung.month)} ${widget.pengguna.bergabung.year}',
                            style: TextStyle(
                              fontSize: defaultHeight / 60,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          SizedBox(
                            height: defaultHeight / 100,
                          ),
                          Container(
                            width: defaultWidth,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Rating :',
                                  style: TextStyle(
                                    fontSize: defaultHeight / 60,
                                  ),
                                ),
                                ImageIcon(
                                  AssetImage('assets/icons/icon_star.png'),
                                  color: Color(0xfff1c40f),
                                  size: defaultHeight / 60,
                                ),
                                Text(
                                  widget.pengguna.rating.toString(),
                                  style: TextStyle(
                                    color: Color(0xffac890d),
                                    fontSize: defaultHeight / 60,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: defaultHeight / 100,
                          ),
                          Card(
                            elevation: 0.0,
                            color: widget.pengguna.peringkatSebagaiPembaca == 'Pembaca Tekun' ? Color(0xffc554fa) :
                                    widget.pengguna.peringkatSebagaiPembaca == 'Pembaca Rajin' ? Color(0xffff0707) : Color(0xfff8ad1e),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Container(
                              width: defaultWidth / 2,
                              padding: EdgeInsets.fromLTRB(defaultWidth / 10, defaultHeight / 120, defaultWidth / 10, defaultHeight / 120),
                              child: Text(
                                widget.pengguna.peringkatSebagaiPembaca,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: defaultHeight / 60,
                                ),
                              ),
                            ),
                          ),
                          Card(
                            elevation: 0.0,
                            color: widget.pengguna.peringkatSebagaiDubber == 'Dubber Professional' ? Color(0xffff9900) :
                            widget.pengguna.peringkatSebagaiDubber == 'Dubber Senior' ? Color(0xff0096d1) : Color(0xff00728b),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Container(
                              width: defaultWidth / 2,
                              padding: EdgeInsets.fromLTRB(defaultWidth / 12, defaultHeight / 120, defaultWidth / 12, defaultHeight / 120),
                              child: Text(
                                widget.pengguna.peringkatSebagaiDubber,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: defaultHeight / 60,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Sudah didengarkan ${widget.pengguna.jumlahDidengar} kali dari berbagai dongeng',
                            style: TextStyle(
                              fontSize: defaultHeight / 60,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: defaultHeight / 6.5,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.only(left: defaultWidth / 21, right: defaultWidth / 21, bottom: defaultHeight / 50),
                  child: Card(
                    elevation: 0.0,
                    color: Color(0xfffbfef3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(defaultWidth / 30, defaultHeight / 40, defaultWidth / 30, defaultHeight / 40),
                      child: ExpandablePanel(
                        header: Text(
                            'Dongeng (7)',
                            style : TextStyle(
                              fontSize: defaultHeight / 40,
                              fontWeight: FontWeight.w400,
                            )
                        ),
                        collapsed: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Wrap(
                                alignment: WrapAlignment.spaceEvenly,
                                children: daftarDongeng7.map((dongeng) => CardDetailPage(dongeng: dongeng)).toList()
                            ),
                          ],
                        ),
                        expanded: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Wrap(
                              alignment: WrapAlignment.spaceEvenly,
                              children: daftarDongeng6.map((dongeng) => CardDetailPage(dongeng: dongeng)).toList()
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
