import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:dongengku/Pages/beranda/dubberdetail_page.dart';
import 'package:dongengku/Pages/profil/upload_sound_page.dart';
import 'package:dongengku/Pages/cerita/story_page.dart';
import 'package:dongengku/method.dart';
import 'package:dongengku/data.dart';

final jumlah = new NumberFormat("#,##0");

Future paymentDialog(BuildContext context) async{
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: Container(
            height: 300.0,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pilih Metode Pembayaran',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  InkWell(
                    child: Row(
                      children: <Widget>[
                        Image(
                          image: AssetImage('assets/icons/icon_ovo.png'),
                          width: 40.0,
                        ),
                        SizedBox(width: 20.0),
                        Text('OVO'),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.0),
                  InkWell(
                    child: Row(
                      children: <Widget>[
                        Image(
                          image: AssetImage('assets/icons/icon_dana.png'),
                          width: 40.0,
                        ),
                        SizedBox(width: 20.0),
                        Text('Dana'),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.0),
                  InkWell(
                    child: Row(
                      children: <Widget>[
                        Image(
                          image: AssetImage('assets/icons/icon_gopay.png'),
                          width: 40.0,
                        ),
                        SizedBox(width: 20.0),
                        Text('Gopay'),
                      ],
                    ),
                  ),
                  SizedBox(height: 30.0),
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Kembali',
                      style: TextStyle(
                          color: Color(0xff50c9c0)
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      });
}

announceDialog(BuildContext context){
  return showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text('Pemberitahuan'),
          content: Text('Saat ini kamu memilih dubber yang berbayar. Kamu hanya bisa mendengarkan contoh suara si dubber, namun kamu tidak bisa mendengarkan nya untuk cerita kamu, kamu harus membeli suara si dubber terlebih dahulu'),
          actions: <Widget>[
            FlatButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child:
                Text(
                  'Kembali',
                  style: TextStyle(
                      color: Color(0xff50c9c0)
                  ),
                )
            ),
            FlatButton(
                onPressed: (){
                  Navigator.pop(context);
                  paymentDialog(context);
                },
                child: Text(
                  'Beli',
                  style: TextStyle(
                      color: Color(0xff50c9c0)
                  ),
                )
            )
          ],
        );
      }
  );
}

class DubberTerbaikHome extends StatelessWidget {
  final Pengguna pengguna;
  DubberTerbaikHome({this.pengguna});

  @override
  Widget build(BuildContext context) {
    double defaultWidth = MediaQuery.of(context).size.width;
    double defaultHeight = MediaQuery.of(context).size.height;

    return InkWell(
      onTap: () async {
        await Navigator.push(context,
          MaterialPageRoute(builder: (context) => DubberDetailPage(pengguna: pengguna)),
        );
      },
      child: Container(
        margin: EdgeInsets.only(right: defaultWidth / 25),
        child: Column(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('assets/profile_images/${pengguna.profilPic}'),
              radius: defaultHeight / 20,
            ),
            ColumnSuper(
              outerDistance: -(defaultHeight / 90),
              children: <Widget>[
                Card(
                  elevation: 0.0,
                  margin: EdgeInsets.all(0.0),
                  color: Color(0xffcbcbcb),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(defaultWidth / 35, defaultHeight / 130, defaultWidth / 35, defaultHeight / 130),
                    child: Text(
                      '${pengguna.julukan} ${pengguna.namaDepan}',
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: defaultHeight / 55,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Card(
              elevation: 0.0,
              margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
              color: Color(0xffcbcbcb),
              shape: CircleBorder(),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                child: ColumnSuper(
                  children: <Widget>[
                    ImageIcon(
                      AssetImage('assets/icons/icon_star.png'),
                      color: Color(0xffac890d),
                      size: defaultHeight / 50,
                    ),
                    Text(
                      pengguna.rating.toString(),
                      style: TextStyle(
                        color: Color(0xffac890d),
                        fontWeight: FontWeight.bold,
                        fontSize: defaultHeight / 70,
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

class CardDubberList extends StatelessWidget {
  final Pengguna pengguna;
  CardDubberList({this.pengguna});

  @override
  Widget build(BuildContext context) {
    double defaultWidth = MediaQuery.of(context).size.width;
    double defaultHeight = MediaQuery.of(context).size.height;

    return InkWell(
      onTap: () async{
        await Navigator.push(context,
          MaterialPageRoute(builder: (context) => DubberDetailPage(pengguna: pengguna)),
        );
      },
      child: Card(
        color: Color(0xfffbfef3),
        elevation: 0.0,
        child: Padding(
          padding: EdgeInsets.all(defaultWidth / 100),
          child: Row(
            children: <Widget>[
              Text(
                '${pengguna.peringkat}. ',
                style: TextStyle(
                  fontSize: defaultHeight / 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              CircleAvatar(
                backgroundImage: AssetImage('assets/profile_images/${pengguna.profilPic}'),
                radius: defaultHeight / 20,
              ),
              SizedBox(
                width: defaultWidth / 30,
              ),
              Container(
                width: 0.5,
                height: defaultHeight / 9,
                color: Color(0xff515151),
              ),
              SizedBox(
                width: defaultWidth / 30,
              ),
              SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      pengguna.namaDepan,
                      style: TextStyle(
                        fontSize: defaultHeight / 45,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: defaultHeight / 150,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Rating :',
                          style: TextStyle(
                            fontSize: defaultHeight / 70,
                          ),
                        ),
                        ImageIcon(
                          AssetImage('assets/icons/icon_star.png'),
                          color: Color(0xfff1c40f),
                          size: defaultHeight / 70,
                        ),
                        Text(
                          pengguna.rating.toString(),
                          style: TextStyle(
                            color: Color(0xffac890d),
                            fontSize: defaultHeight / 70,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: defaultHeight / 150,
                    ),
                    Text(
                      'Sudah didengarkan ${pengguna.jumlahDidengar} kali',
                      style: TextStyle(
                        fontSize: defaultHeight / 70,
                      ),
                    ),
                    SizedBox(
                      height: defaultHeight / 150,
                    ),
                    Text(
                      'Bergabung sejak ${pengguna.bergabung.day} ${monthToString(pengguna.bergabung.month)} ${pengguna.bergabung.year}',
                      style: TextStyle(
                        fontSize: defaultHeight / 70,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardSearchDubber extends StatelessWidget {
  final Pengguna pengguna;
  CardSearchDubber({this.pengguna});

  @override
  Widget build(BuildContext context) {
    double defaultWidth = MediaQuery.of(context).size.width;
    double defaultHeight = MediaQuery.of(context).size.height;

    return InkWell(
      onTap: () async{
        await Navigator.push(context,
          MaterialPageRoute(builder: (context) => DubberDetailPage(pengguna: pengguna)),
        );
      },
      child: Card(
        color: Color(0xfffbfef3),
        elevation: 0.0,
        child: Padding(
          padding: EdgeInsets.only(left: defaultWidth / 30, right: defaultWidth / 30, top: defaultHeight / 80),
          child: Row(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage('assets/profile_images/${pengguna.profilPic}'),
                radius: defaultHeight / 18,
              ),
              SizedBox(
                width: defaultWidth / 20,
              ),
              Container(
                width: 0.5,
                height: defaultHeight / 9,
                color: Color(0xff515151),
              ),
              SizedBox(
                width: defaultWidth / 20,
              ),
              SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      pengguna.namaDepan,
                      style: TextStyle(
                        fontSize: defaultHeight / 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: defaultHeight / 150,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Rating :',
                          style: TextStyle(
                            fontSize: defaultHeight / 65,
                          ),
                        ),
                        ImageIcon(
                          AssetImage('assets/icons/icon_star.png'),
                          color: Color(0xfff1c40f),
                          size: defaultHeight / 65,
                        ),
                        Text(
                          pengguna.rating.toString(),
                          style: TextStyle(
                            color: Color(0xffac890d),
                            fontSize: defaultHeight / 65,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: defaultHeight / 150,
                    ),
                    Text(
                      'Sudah didengarkan ${pengguna.jumlahDidengar} kali',
                      style: TextStyle(
                        fontSize: defaultHeight / 65,
                      ),
                    ),
                    SizedBox(
                      height: defaultHeight / 150,
                    ),
                    Text(
                      'Bergabung sejak ${pengguna.bergabung.day} ${monthToString(pengguna.bergabung.month)} ${pengguna.bergabung.year}',
                      style: TextStyle(
                        fontSize: defaultHeight / 65,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardChooseDubber extends StatelessWidget {
  final Pengguna pengguna;
  CardChooseDubber({this.pengguna});

  @override
  Widget build(BuildContext context) {
    double defaultWidth = MediaQuery.of(context).size.width;
    double defaultHeight = MediaQuery.of(context).size.height;

    return InkWell(
      onTap: (){
        if(!pengguna.terbuka){announceDialog(context);}
        else{Navigator.pop(context);}
      },
      child: Card(
        color: Color(0xff50c9c0),
        elevation: 0.0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0)
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.all(defaultHeight / 80),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    width: defaultWidth / 20,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/profile_images/${pengguna.profilPic}'),
                    radius: defaultHeight / 18,
                    child: Visibility(
                      visible: !pengguna.terbuka,
                      child: RowSuper(
                        outerDistance: -(defaultHeight / 10.5),
                        children: [
                          ColumnSuper(
                            outerDistance: defaultHeight / 80,
                            children: [
                              Image(
                                  image: AssetImage('assets/icons/icon_premium.png'),
                                  height: defaultHeight / 9),
                            ],
                          ),
                        ]
                      ),
                    ),
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
                          '${pengguna.julukan} ${pengguna.namaDepan}',
                          style: TextStyle(
                            fontSize: defaultHeight / 40,
                            fontWeight: FontWeight.bold,
                            color: Color(0xfffbfef3),
                          ),
                        ),
                        SizedBox(
                          height: defaultHeight / 80,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              'Rating :',
                              style: TextStyle(
                                fontSize: defaultHeight / 70,
                                color: Color(0xfffbfef3),
                              ),
                            ),
                            ImageIcon(
                              AssetImage('assets/icons/icon_star.png'),
                              color: Color(0xfff1c40f),
                              size: defaultHeight / 70,
                            ),
                            Text(
                              pengguna.rating.toString(),
                              style: TextStyle(
                                fontSize: defaultHeight / 70,
                                color: Color(0xfffbfef3),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: defaultHeight / 80,
                        ),
                        Text(
                          'Bergabung sejak ${pengguna.bergabung.day} ${monthToString(pengguna.bergabung.month)} ${pengguna.bergabung.year}',
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
          ],
        ),
      ),
    );
  }
}

class CardDongengHome extends StatelessWidget {
  final Dongeng dongeng;
  CardDongengHome({this.dongeng});

  @override
  Widget build(BuildContext context) {
    double defaultWidth = MediaQuery.of(context).size.width;
    double defaultHeight = MediaQuery.of(context).size.height;

    return InkWell(
      onTap: () async{
        await Navigator.push(context,
          MaterialPageRoute(builder: (context) => StoryPage(dongeng: dongeng,)),
        );
      },
      child: Card(
        elevation: 0.0,
        margin: EdgeInsets.only(right: defaultWidth / 20),
        color: Color(0xffede9ce),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(defaultWidth / 30, defaultHeight / 50, defaultWidth / 30, defaultHeight / 50),
          child: Column(
            children: <Widget>[
              Image(
                image: AssetImage('assets/books/${dongeng.cover}'),
                width: defaultWidth / 2.5,
              ),
              SizedBox(
                height: defaultHeight / 80,
              ),
              SizedBox(
                width: defaultWidth / 2.5,
                height: defaultHeight / 20,
                child: Text(
                  dongeng.judul,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: defaultHeight / 55,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardSearchStory extends StatelessWidget {
  final Dongeng dongeng;
  CardSearchStory({this.dongeng});

  @override
  Widget build(BuildContext context) {
    double defaultWidth = MediaQuery.of(context).size.width;
    double defaultHeight = MediaQuery.of(context).size.height;

    return InkWell(
      onTap: () async{
        await Navigator.push(context,
          MaterialPageRoute(builder: (context) => StoryPage(dongeng: dongeng)),
        );
      },
      child: Card(
        color: Color(0xfffbfef3),
        elevation: 0.0,
        child: Padding(
          padding: EdgeInsets.only(left: defaultWidth / 30, right: defaultWidth / 30, top: defaultHeight / 80),
          child: Row(
            children: <Widget>[
              Image(
                image: AssetImage('assets/books/${dongeng.cover}'),
                width: defaultWidth / 4,
              ),
              SizedBox(
                width: defaultWidth / 40,
              ),
              Container(
                width: 0.5,
                height: defaultHeight / 6.5,
                color: Color(0xff515151),
              ),
              SizedBox(
                width: defaultWidth / 40,
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      width: defaultWidth / 2.5,
                      child: Text(
                        dongeng.judul,
                        style: TextStyle(
                          fontSize: defaultHeight / 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: defaultHeight / 70,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Dongeng dari ${dongeng.daerah}',
                          style: TextStyle(
                            fontSize: defaultHeight / 60,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: defaultHeight / 150,
                    ),
                    Text(
                      'Sudah dibaca ${dongeng.jumlahDibaca} kali',
                      style: TextStyle(
                        fontSize: defaultHeight / 60,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardDetailPage extends StatelessWidget {
  final Dongeng dongeng;
  CardDetailPage({this.dongeng});

  @override
  Widget build(BuildContext context) {
    double defaultWidth = MediaQuery.of(context).size.width;
    double defaultHeight = MediaQuery.of(context).size.height;

    return InkWell(
      onTap: () async{
        await Navigator.push(context,
          MaterialPageRoute(builder: (context) => StoryPage(dongeng: dongeng)),
        );
      },
      child: Card(
        elevation: 0.0,
        margin: EdgeInsets.all(defaultWidth / 60),
        color: Color(0xffede9ce),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(defaultWidth / 30, defaultHeight / 80, defaultWidth / 30, defaultHeight / 80),
          child: Column(
            children: <Widget>[
              Image(
                image: AssetImage('assets/books/${dongeng.cover}'),
                width: defaultWidth / 4,
              ),
              SizedBox(
                height: defaultHeight / 70,
              ),
              SizedBox(
                width: defaultWidth / 3.5,
                height: defaultHeight / 13,
                child: Column(
                  children: [
                    Text(
                      dongeng.judul,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: defaultHeight / 60,
                      ),
                    ),
                    SizedBox(height: defaultHeight / 120),
                    Text(
                      '${dongeng.jumlahDidongengkanPengguna1.toString()} kali',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: defaultHeight / 70,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BookInBookCase extends StatelessWidget {
  final Dongeng dongeng;
  BookInBookCase({this.dongeng});

  @override
  Widget build(BuildContext context) {
    double defaultWidth = MediaQuery.of(context).size.width;
    double defaultHeight = MediaQuery.of(context).size.height;

    return InkWell(
        onTap: () async{
          await Navigator.push(context,
            MaterialPageRoute(builder: (context) => StoryPage(dongeng: dongeng)),
          );
        },
        child: Image(image: AssetImage('assets/books/${dongeng.cover}'), width: defaultWidth / 3.3,)
    );
  }
}

class CardUploadDubber extends StatelessWidget {
  final Dongeng dongeng;
  CardUploadDubber({this.dongeng});

  @override
  Widget build(BuildContext context) {
    double defaultWidth = MediaQuery.of(context).size.width;
    double defaultHeight = MediaQuery.of(context).size.height;

    return Card(
      elevation: 0.0,
      margin: EdgeInsets.only(bottom: defaultHeight / 40),
      color: Color(0xffede9ce),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(defaultWidth / 30, defaultHeight / 80, defaultWidth / 30, defaultHeight / 80),
        child: Column(
          children: <Widget>[
            Image(
              image: AssetImage('assets/books/${dongeng.cover}'),
              width: defaultWidth / 3.5,
            ),
            SizedBox(
              height: defaultHeight / 70,
            ),
            SizedBox(
              width: defaultWidth / 3.5,
              height: defaultHeight / 14,
              child: Text(
                dongeng.judul,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                ),
              ),
            ),
            RaisedButton(
              elevation: 0.0,
              onPressed: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => UploadSoundPage(dongeng: dongeng)),
                );
              },
              color: Color(0xff50c9c0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Container(
                width: defaultWidth / 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    ImageIcon(
                      AssetImage('assets/icons/icon_micdubber.png'),
                      color: Colors.white,
                      size: defaultWidth / 30,
                    ),
                    SizedBox(width: defaultWidth / 70),
                    Text(
                      'Kirim Rekaman',
                      style: TextStyle(
                          fontSize: defaultHeight / 70 ,
                          color: Colors.white
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

class CardDubbingPurchase extends StatelessWidget {
  final PembelianDubbing bukti;
  CardDubbingPurchase({this.bukti});

  @override
  Widget build(BuildContext context) {
    double defaultWidth = MediaQuery.of(context).size.width;
    double defaultHeight = MediaQuery.of(context).size.height;

    return Card(
      elevation: 0.0,
      color: Color(0xff50c9c0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(defaultWidth / 20, defaultHeight / 50, defaultWidth / 20, defaultHeight / 70),
        child: ExpandablePanel(
          iconColor: Color(0xfffbfef3),
          header: Text(
              'Dubbing',
              style : TextStyle(
                  fontSize: defaultHeight / 35,
                  fontWeight: FontWeight.w400,
                  color: Color(0xfffbfef3)
              )
          ),
          expanded: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: defaultWidth / 3.5,
                    child: Text(
                        'Judul',
                        style : TextStyle(
                          color: Color(0xfffbfef3),
                          fontSize: defaultHeight / 60
                        )
                    ),
                  ),
                  SizedBox(width: defaultWidth / 30),
                  Container(
                    child: Text(
                        ':',
                        style : TextStyle(
                            color: Color(0xfffbfef3),
                            fontSize: defaultHeight / 60
                        )
                    ),
                  ),
                  SizedBox(width: defaultWidth / 30),
                  Container(
                    width: defaultWidth / 3,
                    child: Text(
                        bukti.judul,
                        style : TextStyle(
                            color: Color(0xfffbfef3),
                            fontSize: defaultHeight / 60
                        )
                    ),
                  ),
                ],
              ),
              SizedBox(height: defaultHeight / 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: defaultWidth / 3.5,
                    child: Text(
                        'Dubber',
                        style : TextStyle(
                            color: Color(0xfffbfef3),
                            fontSize: defaultHeight / 60
                        )
                    ),
                  ),
                  SizedBox(width: defaultWidth / 30),
                  Container(
                    child: Text(
                        ':',
                        style : TextStyle(
                            color: Color(0xfffbfef3),
                            fontSize: defaultHeight / 60
                        )
                    ),
                  ),
                  SizedBox(width: defaultWidth / 30),
                  Container(
                    width: defaultWidth / 3,
                    child: Text(
                        bukti.namaDubber,
                        style : TextStyle(
                            color: Color(0xfffbfef3),
                            fontSize: defaultHeight / 60
                        )
                    ),
                  ),
                ],
              ),
              SizedBox(height: defaultHeight / 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: defaultWidth / 3.5,
                    child: Text(
                        'Tanggal Pembelian',
                        style : TextStyle(
                            color: Color(0xfffbfef3),
                            fontSize: defaultHeight / 60
                        )
                    ),
                  ),
                  SizedBox(width: defaultWidth / 30),
                  Container(
                    child: Text(
                        ':',
                        style : TextStyle(
                            color: Color(0xfffbfef3),
                            fontSize: defaultHeight / 60
                        )
                    ),
                  ),
                  SizedBox(width: defaultWidth / 30),
                  Container(
                    width: defaultWidth / 3,
                    child: Text(
                        '${bukti.tanggalPembelian.day} ${monthToString(bukti.tanggalPembelian.month)} ${bukti.tanggalPembelian.year}',
                        style : TextStyle(
                            color: Color(0xfffbfef3),
                            fontSize: defaultHeight / 60
                        )
                    ),
                  ),
                ],
              ),
              SizedBox(height: defaultHeight / 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: defaultWidth / 3.5,
                    child: Text(
                        'Via',
                        style : TextStyle(
                            color: Color(0xfffbfef3),
                            fontSize: defaultHeight / 60
                        )
                    ),
                  ),
                  SizedBox(width: defaultWidth / 30),
                  Container(
                    child: Text(
                        ':',
                        style : TextStyle(
                            color: Color(0xfffbfef3),
                            fontSize: defaultHeight / 60
                        )
                    ),
                  ),
                  SizedBox(width: defaultWidth / 30),
                  Container(
                    width: defaultWidth / 3,
                    child: Text(
                        bukti.via,
                        style : TextStyle(
                            color: Color(0xfffbfef3),
                            fontSize: defaultHeight / 60
                        )
                    ),
                  ),
                ],
              ),
              SizedBox(height: defaultHeight / 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: defaultWidth / 3.5,
                    child: Text(
                        'Harga',
                        style : TextStyle(
                            color: Color(0xfffbfef3),
                            fontSize: defaultHeight / 60
                        )
                    ),
                  ),
                  SizedBox(width: defaultWidth / 30),
                  Container(
                    child: Text(
                        ':',
                        style : TextStyle(
                            color: Color(0xfffbfef3),
                            fontSize: defaultHeight / 60
                        )
                    ),
                  ),
                  SizedBox(width: defaultWidth / 30),
                  Container(
                    width: defaultWidth / 3,
                    child: Text(
                        'Rp. ${jumlah.format(bukti.jumlah)}',
                        style : TextStyle(
                            color: Color(0xfffbfef3),
                            fontSize: defaultHeight / 60
                        )
                    ),
                  ),
                ],
              ),
              SizedBox(height: defaultHeight / 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: defaultWidth / 3.5,
                    child: Text(
                        'Status Pembelian',
                        style : TextStyle(
                            color: Color(0xfffbfef3)
                        )
                    ),
                  ),
                  SizedBox(width: defaultWidth / 30),
                  Container(
                    child: Text(
                        ':',
                        style : TextStyle(
                            color: Color(0xfffbfef3),
                            fontSize: defaultHeight / 60
                        )
                    ),
                  ),
                  SizedBox(width: defaultWidth / 30),
                  Container(
                    width: defaultWidth / 3,
                    child: Text(
                        bukti.status? 'Berhasil' : 'Gagal',
                        style : TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Color(0xfffbfef3),
                            fontSize: defaultHeight / 60
                        )
                    ),
                  ),
                ],
              ),
              SizedBox(height: defaultHeight / 90),
            ],
          ),
        ),
      ),
    );
  }
}

class CardStoryPurchase extends StatelessWidget {
  final PembelianCerita bukti;
  CardStoryPurchase({this.bukti});

  @override
  Widget build(BuildContext context) {
    double defaultWidth = MediaQuery.of(context).size.width;
    double defaultHeight = MediaQuery.of(context).size.height;

    return Card(
      elevation: 0.0,
      color: Color(0xfffdb9c4),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(defaultWidth / 20, defaultHeight / 50, defaultWidth / 20, defaultHeight / 70),
        child: ExpandablePanel(
          iconColor: Color(0xfffbfef3),
          header: Text(
              'Cerita',
              style : TextStyle(
                  fontSize: defaultHeight / 35,
                  fontWeight: FontWeight.w400,
                  color: Color(0xfffbfef3)
              )
          ),
          expanded: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: defaultWidth / 3.5,
                    child: Text(
                        'Judul',
                        style : TextStyle(
                          color: Color(0xfffbfef3),
                          fontSize: defaultHeight / 60
                        )
                    ),
                  ),
                  SizedBox(width: defaultWidth / 30),
                  Container(
                    child: Text(
                        ':',
                        style : TextStyle(
                            color: Color(0xfffbfef3),
                            fontSize: defaultHeight / 60
                        )
                    ),
                  ),
                  SizedBox(width: defaultWidth / 30),
                  Container(
                    width: defaultWidth / 3,
                    child: Text(
                        bukti.judul,
                        style : TextStyle(
                            color: Color(0xfffbfef3),
                            fontSize: defaultHeight / 60
                        )
                    ),
                  ),
                ],
              ),
              SizedBox(height: defaultHeight / 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: defaultWidth / 3.5,
                    child: Text(
                        'Daerah',
                        style : TextStyle(
                            color: Color(0xfffbfef3),
                            fontSize: defaultHeight / 60
                        )
                    ),
                  ),
                  SizedBox(width: defaultWidth / 30),
                  Container(
                    child: Text(
                        ':',
                        style : TextStyle(
                            color: Color(0xfffbfef3),
                            fontSize: defaultHeight / 60
                        )
                    ),
                  ),
                  SizedBox(width: defaultWidth / 30),
                  Container(
                    width: defaultWidth / 3,
                    child: Text(
                        bukti.daerah,
                        style : TextStyle(
                            color: Color(0xfffbfef3),
                            fontSize: defaultHeight / 60
                        )
                    ),
                  ),
                ],
              ),
              SizedBox(height: defaultHeight / 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: defaultWidth / 3.5,
                    child: Text(
                        'Tanggal Pembelian',
                        style : TextStyle(
                            color: Color(0xfffbfef3),
                            fontSize: defaultHeight / 60
                        )
                    ),
                  ),
                  SizedBox(width: defaultWidth / 30),
                  Container(
                    child: Text(
                        ':',
                        style : TextStyle(
                            color: Color(0xfffbfef3),
                            fontSize: defaultHeight / 60
                        )
                    ),
                  ),
                  SizedBox(width: defaultWidth / 30),
                  Container(
                    width: defaultWidth / 3,
                    child: Text(
                        '${bukti.tanggalPembelian.day} ${monthToString(bukti.tanggalPembelian.month)} ${bukti.tanggalPembelian.year}',
                        style : TextStyle(
                            color: Color(0xfffbfef3),
                            fontSize: defaultHeight / 60
                        )
                    ),
                  ),
                ],
              ),
              SizedBox(height: defaultHeight / 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: defaultWidth / 3.5,
                    child: Text(
                        'Via',
                        style : TextStyle(
                            color: Color(0xfffbfef3),
                            fontSize: defaultHeight / 60
                        )
                    ),
                  ),
                  SizedBox(width: defaultWidth / 30),
                  Container(
                    child: Text(
                        ':',
                        style : TextStyle(
                            color: Color(0xfffbfef3),
                            fontSize: defaultHeight / 60
                        )
                    ),
                  ),
                  SizedBox(width: defaultWidth / 30),
                  Container(
                    width: defaultWidth / 3,
                    child: Text(
                        bukti.via,
                        style : TextStyle(
                            color: Color(0xfffbfef3),
                            fontSize: defaultHeight / 60
                        )
                    ),
                  ),
                ],
              ),
              SizedBox(height: defaultHeight / 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: defaultWidth / 3.5,
                    child: Text(
                        'Harga',
                        style : TextStyle(
                            color: Color(0xfffbfef3),
                            fontSize: defaultHeight / 60
                        )
                    ),
                  ),
                  SizedBox(width: defaultWidth / 30),
                  Container(
                    child: Text(
                        ':',
                        style : TextStyle(
                            color: Color(0xfffbfef3),
                            fontSize: defaultHeight / 60
                        )
                    ),
                  ),
                  SizedBox(width: defaultWidth / 30),
                  Container(
                    width: defaultWidth / 3,
                    child: Text(
                        'Rp. ${jumlah.format(bukti.jumlah)}',
                        style : TextStyle(
                            color: Color(0xfffbfef3),
                            fontSize: defaultHeight / 60
                        )
                    ),
                  ),
                ],
              ),
              SizedBox(height: defaultHeight / 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: defaultWidth / 3.5,
                    child: Text(
                        'Status Pembelian',
                        style : TextStyle(
                            color: Color(0xfffbfef3),
                            fontSize: defaultHeight / 60
                        )
                    ),
                  ),
                  SizedBox(width: defaultWidth / 30),
                  Container(
                    child: Text(
                        ':',
                        style : TextStyle(
                            color: Color(0xfffbfef3),
                            fontSize: defaultHeight / 60
                        )
                    ),
                  ),
                  SizedBox(width: defaultWidth / 30),
                  Container(
                    width: defaultWidth / 3,
                    child: Text(
                        bukti.status? 'Berhasil' : 'Gagal',
                        style : TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Color(0xfffbfef3),
                            fontSize: defaultHeight / 60
                        )
                    ),
                  ),
                ],
              ),
              SizedBox(height: defaultHeight / 90),
            ],
          ),
        ),
      ),
    );
  }
}

class CardReceipt extends StatelessWidget {
  final TandaTerimaDubbing bukti;
  CardReceipt({this.bukti});

  @override
  Widget build(BuildContext context) {
    double defaultWidth = MediaQuery.of(context).size.width;
    double defaultHeight = MediaQuery.of(context).size.height;

    return Card(
      elevation: 0.0,
      color: Color(0xff50c9c0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(defaultWidth / 20, defaultHeight / 50, defaultWidth / 20, defaultHeight / 70),
        child: ExpandablePanel(
          iconColor: Color(0xfffbfef3),
          header: Text(
              'Tanda Terima',
              style : TextStyle(
                  fontSize: defaultHeight / 35,
                  fontWeight: FontWeight.w400,
                  color: Color(0xfffbfef3)
              )
          ),
          expanded: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: defaultWidth / 3.5,
                    child: Text(
                        'Judul',
                        style : TextStyle(
                          color: Color(0xfffbfef3),
                          fontSize: defaultHeight / 60
                        )
                    ),
                  ),
                  SizedBox(width: defaultWidth / 30),
                  Container(
                    child: Text(
                        ':',
                        style : TextStyle(
                            color: Color(0xfffbfef3),
                            fontSize: defaultHeight / 60
                        )
                    ),
                  ),
                  SizedBox(width: defaultWidth / 30),
                  Container(
                    width: defaultWidth / 3,
                    child: Text(
                        'Dubbing - ${bukti.judul}',
                        style : TextStyle(
                            color: Color(0xfffbfef3),
                            fontSize: defaultHeight / 60
                        )
                    ),
                  ),
                ],
              ),
              SizedBox(height: defaultHeight / 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: defaultWidth / 3.5,
                    child: Text(
                        'Pembeli',
                        style : TextStyle(
                          color: Color(0xfffbfef3),
                          fontSize: defaultHeight / 60
                        )
                    ),
                  ),
                  SizedBox(width: defaultWidth / 30),
                  Container(
                    child: Text(
                        ':',
                        style : TextStyle(
                            color: Color(0xfffbfef3),
                            fontSize: defaultHeight / 60
                        )
                    ),
                  ),
                  SizedBox(width: defaultWidth / 30),
                  Container(
                    width: defaultWidth / 3,
                    child: Text(
                        bukti.namaPembeli,
                        style : TextStyle(
                            color: Color(0xfffbfef3),
                            fontSize: defaultHeight / 60
                        )
                    ),
                  ),
                ],
              ),
              SizedBox(height: defaultHeight / 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: defaultWidth / 3.5,
                    child: Text(
                        'Tanggal Terima',
                        style : TextStyle(
                            color: Color(0xfffbfef3),
                            fontSize: defaultHeight / 60
                        )
                    ),
                  ),
                  SizedBox(width: defaultWidth / 30),
                  Container(
                    child: Text(
                        ':',
                        style : TextStyle(
                            color: Color(0xfffbfef3),
                            fontSize: defaultHeight / 60
                        )
                    ),
                  ),
                  SizedBox(width: defaultWidth / 30),
                  Container(
                    width: defaultWidth / 3,
                    child: Text(
                        '${bukti.tanggalPembelian.day} ${monthToString(bukti.tanggalPembelian.month)} ${bukti.tanggalPembelian.year}',
                        style : TextStyle(
                            color: Color(0xfffbfef3),
                            fontSize: defaultHeight / 60
                        )
                    ),
                  ),
                ],
              ),
              SizedBox(height: defaultHeight / 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: defaultWidth / 3.5,
                    child: Text(
                        'Via',
                        style : TextStyle(
                          color: Color(0xfffbfef3),
                          fontSize: defaultHeight / 60
                        )
                    ),
                  ),
                  SizedBox(width: defaultWidth / 30),
                  Container(
                    child: Text(
                        ':',
                        style : TextStyle(
                            color: Color(0xfffbfef3),
                            fontSize: defaultHeight / 60
                        )
                    ),
                  ),
                  SizedBox(width: defaultWidth / 30),
                  Container(
                    width: defaultWidth / 3,
                    child: Text(
                        bukti.via,
                        style : TextStyle(
                            color: Color(0xfffbfef3),
                            fontSize: defaultHeight / 60
                        )
                    ),
                  ),
                ],
              ),
              SizedBox(height: defaultHeight / 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: defaultWidth / 3.5,
                    child: Text(
                        'Jumlah',
                        style : TextStyle(
                            color: Color(0xfffbfef3),
                            fontSize: defaultHeight / 60
                        )
                    ),
                  ),
                  SizedBox(width: defaultWidth / 30),
                  Container(
                    child: Text(
                        ':',
                        style : TextStyle(
                            color: Color(0xfffbfef3),
                            fontSize: defaultHeight / 60
                        )
                    ),
                  ),
                  SizedBox(width: defaultWidth / 30),
                  Container(
                    width: defaultWidth / 3,
                    child: Text(
                        'Rp. ${jumlah.format(bukti.jumlah)}',
                        style : TextStyle(
                            color: Color(0xfffbfef3),
                            fontSize: defaultHeight / 60
                        )
                    ),
                  ),
                ],
              ),
              SizedBox(height: defaultHeight / 90),
            ],
          ),
        ),
      ),
    );
  }
}

class SoundEffectTemplate extends StatefulWidget {
  final KomponenEfekSuara efek;
  SoundEffectTemplate({this.efek});

  @override
  _SoundEffectTemplateState createState() => _SoundEffectTemplateState();
}

class _SoundEffectTemplateState extends State<SoundEffectTemplate> {

  @override
  Widget build(BuildContext context) {
    double defaultWidth = MediaQuery.of(context).size.width;
    double defaultHeight = MediaQuery.of(context).size.height;

    return InkWell(
      onTap: (){
        if(!widget.efek.active){
          setState(() {
            widget.efek.color = Color(0xffff8da0);
            widget.efek.active = true;
          });
        }
        else{
          setState(() {
            widget.efek.color = Color(0xfffdb9c4);
            widget.efek.active = false;
          });
        }
      },
      child: Container(
        width: defaultWidth / 3.5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: widget.efek.color,
              radius: defaultHeight / 15,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/icons/${widget.efek.iconName}'),
                    height: defaultHeight / 20,
                  ),
                  SizedBox(height: defaultHeight / 60),
                  Container(
                    width: defaultWidth / 5,
                    child: Text(
                      widget.efek.labelEfek,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: defaultHeight / 65
                      ),
                    ),
                  )
                ],
              ),
            ),
            Visibility(
              maintainSize: true,
              maintainAnimation: true,
              maintainState: true,
              visible: widget.efek.active,
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.zero,
                    width: defaultWidth / 4,
                    child: Slider(
                        activeColor: Color(0xffff8da0),
                        inactiveColor: Colors.grey[350],
                        value: widget.efek.value,
                        min: 0.0,
                        max: 100.0,
                        onChanged: (value){
                          setState(() {
                            widget.efek.value = value;
                          });
                        }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}