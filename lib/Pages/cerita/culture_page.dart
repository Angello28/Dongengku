import 'package:flutter/material.dart';
class CulturePage extends StatefulWidget {
  @override
  _CulturePageState createState() => _CulturePageState();
}

class _CulturePageState extends State<CulturePage> {
  @override
  @override
  Widget build(BuildContext context) {
    double defaultWidth = MediaQuery.of(context).size.width;
    double defaultHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xffcff0cc),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffcff0cc),
        iconTheme: IconThemeData(
          color: Color(0xff515151),
        ),
      ),
      body: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(defaultWidth / 15, defaultHeight / 50, defaultWidth / 15, defaultHeight / 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image(
                image: AssetImage('assets/others/sumut culture.png'),
              ),
              SizedBox(height: defaultHeight / 50),
              Text(
                'KEBUDAYAAN',
                style: TextStyle(
                    fontSize: defaultHeight / 30,
                    color: Color(0xff515151),
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                'Selain Pesona Alamnya yang terkenal, Sumatera Utara juga terkenal dengan kebuadayaan dari Provinsi Sumatera Utara yang masih berada di pulau Sumatera. Seperti biasa, kita akan melihat bentuk rumah adat, pakaian adat, tari-tarian budaya, senjata tradisional, suku, bahasa dan lagu daerah. Berikut Uraian singakat dari budaya Sumatera Utara :',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                '1. Rumah Adat',
                style: TextStyle(
                    fontSize: defaultHeight / 50,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                'Rumah adat Sumatera Utara dinamakan Parsakitan dan Jabu Bolon. Jabu Parsakitan adalah rumah adat di daerah Batak Toba, tempat penyimpanan barang-barang pusaka dan tempat penyimpanan barang-barang pusaka dan tempat pertemuan untuk membicarakan hal-hal yang berhubungan dengan penyelenggaraan adat. Jabu Bolon adalah rumah pertemuan suatu keluarga besar. Berbentuk panggung dan ruang atas untuk tempat tinggal bersama-sama, Tempat tidur lebih tinggi dari dapur.',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                '2. Pakaian Adat',
                style: TextStyle(
                    fontSize: defaultHeight / 50,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                'Di daerah Tapanuli Utara tenunan tradisionalnya disebut ulos. Kain ulos itu terdiri dari beberapa macam yang harga dan fungsinya berbeda-beda. Misalnya: Ulos Godang, Sibolang, Mangiring, Sitoluntuho, Ragi Hidup, Sadum, dan Ragi Hotang.',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                'Pada upacara adat kaum pria mengenakan tutup kepala yang disebut sabe-sabe dari ulos mangiring. Di bahunya disampirkan Ulos Ragi Hotang dan mengenakan kain sarung. Kaum wanitanya menegenakan Ulos Sadum yang disampirkan di kedua bahunya dililit dengan Ulos Ragi Hotang dan mengenakan sarung suji.',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                '3. Tarian Adat',
                style: TextStyle(
                    fontSize: defaultHeight / 50,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                'Tari Serampang Dua Belas',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                'Sebuah tari melayu dengan irama joged. Diiringi musik dengan pukulan gendang ala Amerika Latin. Serampang Dua Belas merupakan tari pergaulan, baik bagi muda-mudi maupun orang tua.',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                'Tari Tor-tor',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                'Sebuah tari dari daerah Batak dengan latar belakang falsafah peradatan dan ditarikan dalam suasana khusuk.',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                'Tari Marsia Lapari',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                'Tari garapan ini menggambarkan kegiatan gadis-gadis Sumatera Utara yang senantiasa saling membantu dalam menggarap sawah. Olahan tari didasarkan unsur gerak tari daerah Tapanuli Selatan yang diramu dengan unsur daerah lain, dengan iringan musik gondang sembilah.',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),

              SizedBox(height: defaultHeight / 70),
              Text(
                'Tari Manduda',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                'Suatu bentuk tarian rakyat Simalungun yang bersuka ria di masa panen padi.',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),


              SizedBox(height: defaultHeight / 70),
              Text(
                '4. Senjata Adat',
                style: TextStyle(
                    fontSize: defaultHeight / 50,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                'Piso surit adalah sejenis belati dan merupakan senjata tradisional di Tanah Karo, Sumatera Utara. Piso gaja dompak, berupa sebilah keris panjang merupakan lambang penting pemerintahan Raja Si Singamangaraja. Senjata ini hanya boleh diguanakan oleh raja saja. Senjata tradisional yang biasa digunakan oleh masyarakat umum adalah hujur sejenis tombak dan podang sejenis pedang panjang.',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                '5. Suku',
                style: TextStyle(
                    fontSize: defaultHeight / 50,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                'Ada beragam suku yang bisa Anda temui saat berada di Sumatera Utara seperti Suku Melayu, Suku Batak, Suku Nias dan masih banyak lagi. Dari berbagai suku ini memiliki gaya dan ragam bahasa yang berbeda.',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                '6. Lagu Daerah',
                style: TextStyle(
                    fontSize: defaultHeight / 50,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                'Lagu-lagu daerah Sumatera Utara mempunyai nada segi bahasa yang menarik untuk dipelajari agar semakin dekat dengan kebudayaan Nusantara khususnya yang ada di Sumatera dengan mengenal kebudayaan Sumatera Utara ini.',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                '7. Bahasa Daerah',
                style: TextStyle(
                    fontSize: defaultHeight / 50,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                'Sumatera Utara Memiliki bahasa beberapa bahasa yang biasa digunakan dalam berkomunikasi di sana. Seperti Bahasa Batak, Bahasa Karo, Bahasa Nias, Bahasa Mondaling dan lain-lain.',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
            ],
          )
      ),
    );
  }
}

