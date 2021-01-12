import 'package:flutter/material.dart';
class HistoryPage extends StatefulWidget {
  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  @override
  Widget build(BuildContext context) {
    double defaultWidth = MediaQuery.of(context).size.width;
    double defaultHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xffd5f5ee),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffd5f5ee),
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
                image: AssetImage('assets/others/sumut history.jpg'),
              ),
              SizedBox(height: defaultHeight / 50),
              Text(
                'SEJARAH',
                style: TextStyle(
                    fontSize: defaultHeight / 30,
                    color: Color(0xff515151),
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                'Pada zaman pemerintahan Belanda, Sumatra Utara merupakan suatu pemerintahan yang bernama Gouvernement van Sumatra dengan wilayah meliputi seluruh pulau Sumatra, dipimpin oleh seorang Gubernur yang berkedudukan di kota Medan.',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                'Setelah kemerdekaan, dalam sidang pertama Komite Nasional Daerah (KND), Provinsi Sumatra kemudian dibagi menjadi tiga sub provinsi yaitu: Sumatra Utara, Sumatra Tengah, dan Sumatra Selatan. Provinsi Sumatra Utara sendiri merupakan penggabungan dari tiga daerah administratif yang disebut keresidenan yaitu: Keresidenan Aceh, Keresidenan Sumatra Timur, dan Keresidenan Tapanuli.',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),

              SizedBox(height: defaultHeight / 70),
              Text(
                'Dengan diterbitkannya Undang-Undang Republik Indonesia (R.I.) No. 10 Tahun 1948 pada tanggal 15 April 1948, ditetapkan bahwa Sumatra dibagi menjadi tiga provinsi yang masing-masing berhak mengatur dan mengurus rumah tangganya sendiri yaitu: Provinsi Sumatra Utara, Provinsi Sumatra Tengah, dan Provinsi Sumatra Selatan. Tanggal 15 April 1948 selanjutnya ditetapkan sebagai hari jadi Provinsi Sumatra Utara.',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                'Pada awal tahun 1949, dilakukan kembali reorganisasi pemerintahan di Sumatra. Dengan Keputusan Pemerintah Darurat R.I. Nomor 22/Pem/PDRI pada tanggal 17 Mei 1949, jabatan Gubernur Sumatra Utara ditiadakan. Selanjutnya dengan Ketetapan Pemerintah Darurat R.I. pada tanggal 17 Desember 1949, dibentuk Provinsi Aceh dan Provinsi Tapanuli/Sumatra Timur. Kemudian, dengan Peraturan Pemerintah Pengganti Undang-Undang No. 5 Tahun 1950 pada tanggal 14 Agustus 1950, ketetapan tersebut dicabut dan dibentuk kembali Provinsi Sumatra Utara.',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                'Dengan Undang-Undang R.I. No. 24 Tahun 1956 yang diundangkan pada tanggal 7 Desember 1956, dibentuk Daerah Otonom Provinsi Aceh, sehingga wilayah Provinsi Sumatra Utara sebagian menjadi wilayah Provinsi Aceh.',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                'Tonggak Sejarah',
                style: TextStyle(
                    fontSize: defaultHeight / 50,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                '1854',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              Text(
                'Gouvernement van Sumatra, ibukotanya di Medan',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                '1948',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              Text(
                'Berdiri Provinsi Sumatera Utara, Provinsi Sumatera Tengah, dan Provinsi Sumatera Selatan',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                '1949',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              Text(
                'Dibentuk Provinsi Aceh dan Provinsi Tapanuli/Sumatera Timur',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                '1950',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              Text(
                'Provinsi Aceh dan Provinsi Tapanuli/Sumatera Timur digabungkan kembali sebagai Provinsi Sumatera Utara',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                '1956',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              Text(
                'Berdiri Provinsi Aceh, dengan wilayahnya sebahagian dari Provinsi Sumatera Utara',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
            ],
          ),
      ),
    );
  }
}

