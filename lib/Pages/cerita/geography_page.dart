import 'package:flutter/material.dart';

class GeographyPage extends StatefulWidget {
  @override
  _GeographyPageState createState() => _GeographyPageState();
}

class _GeographyPageState extends State<GeographyPage> {
  @override
  Widget build(BuildContext context) {
    double defaultWidth = MediaQuery.of(context).size.width;
    double defaultHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xfffff5d9),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xfffff5d9),
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
                image: AssetImage('assets/others/sumut.jpg'),
              ),
              SizedBox(height: defaultHeight / 50),
              Text(
                  'GEOGRAFIS',
                  style: TextStyle(
                      fontSize: defaultHeight / 30,
                      color: Color(0xff515151),
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0
                    ),
                  ),
              SizedBox(height: defaultHeight / 70),
              Text(
                  'Provinsi Sumatra Utara terletak pada 1° - 4° Lintang Utara dan 98° - 100° Bujur Timur, Luas daratan Provinsi Sumatra Utara 72.981,23 km².',
                  style: TextStyle(
                    fontSize: defaultHeight / 60,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                  ),
                ),
              SizedBox(height: defaultHeight / 70),
              Text(
                'Sumatra Utara pada dasarnya dapat dibagi atas:',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Icons.fiber_manual_record,
                        size: defaultHeight / 60,
                        color: Color(0xff515151),
                      ),
                      SizedBox(width: defaultWidth / 60),
                      Container(
                        child: Text(
                          'Pesisir Timur',
                          style: TextStyle(
                            fontSize: defaultHeight / 60,
                            color: Color(0xff515151),
                              letterSpacing: 1.0
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.fiber_manual_record,
                      size: defaultHeight / 60,
                      color: Color(0xff515151),
                    ),
                    SizedBox(width: defaultWidth / 60),
                    Container(
                      child: Text(
                        'Pegunungan Bukit Barisan',
                        style: TextStyle(
                            fontSize: defaultHeight / 60,
                            color: Color(0xff515151),
                            letterSpacing: 1.0
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.fiber_manual_record,
                      size: defaultHeight / 60,
                      color: Color(0xff515151),
                    ),
                    SizedBox(width: defaultWidth / 60),
                    Container(
                      child: Text(
                        'Pesisir Barat',
                        style: TextStyle(
                            fontSize: defaultHeight / 60,
                            color: Color(0xff515151),
                            letterSpacing: 1.0
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.fiber_manual_record,
                      size: defaultHeight / 60,
                      color: Color(0xff515151),
                    ),
                    SizedBox(width: defaultWidth / 60),
                    Container(
                      child: Text(
                        'Kepulauan Nias',
                        style: TextStyle(
                            fontSize: defaultHeight / 60,
                            color: Color(0xff515151),
                            letterSpacing: 1.0
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                'Batas Wilayah',
                style: TextStyle(
                    fontSize: defaultHeight / 50,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                'Utara',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              Text(
                'Provinsi Aceh dan Selat Malaka',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                'Timur',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              Text(
                'Selat Malaka',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                'Selatan',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              Text(
                'Provinsi Riau, Provinsi Sumatra Barat, dan Samudera Indonesia',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                'Barat',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              Text(
                'Provinsi Aceh dan Samudera Indonesia',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                'Terdapat 419 pulau di propisi Sumatra Utara. Pulau-pulau terluar adalah pulau Simuk (kepulauan Nias), dan pulau Berhala di selat Sumatra (Malaka).',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                'Kepulauan Nias terdiri dari pulau Nias sebagai pulau utama dan pulau-pulau kecil lain di sekitarnya. Kepulauan Nias terletak di lepas pantai pesisir barat di Samudera Hindia. Pusat pemerintahan terletak di Gunung Sitoli.',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                'Terdapat 419 pulau di propisi Sumatra Utara. Pulau-pulau terluar adalah pulau Simuk (kepulauan Nias), dan pulau Berhala di selat Sumatra (Malaka).',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                'Kepulauan Batu terdiri dari 51 pulau dengan 4 pulau besar: Sibuasi, Pini, Tanahbala, Tanahmasa. Pusat pemerintahan di Pulautelo di pulau Sibuasi. Kepulauan Batu terletak di tenggara kepulauan Nias. Pulau-pulau lain di Sumatra Utara: Imanna, Pasu, Bawa, Hamutaia, Batumakalele, Lego, Masa, Bau, Simaleh, Makole, Jake, dan Sigata, Wunga.',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                'Di Sumatra Utara saat ini terdapat dua taman nasional, yakni Taman Nasional Gunung Leuser dan Taman Nasional Batang Gadis. Menurut Keputusan Menteri Kehutanan, Nomor 44 Tahun 2005, luas hutan di Sumatra Utara saat ini 3.742.120 hektare (ha). Yang terdiri dari Kawasan Suaka Alam/Kawasan Pelestarian Alam seluas 477.070 ha, Hutan Lindung 1.297.330 ha, Hutan Produksi Terbatas 879.270 ha, Hutan Produksi Tetap 1.035.690 ha dan Hutan Produksi yang dapat dikonversi seluas 52.760 ha.',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                'Namun angka ini sifatnya secara de jure saja. Sebab secara de facto, hutan yang ada tidak seluas itu lagi. Terjadi banyak kerusakan akibat perambahan dan pembalakan liar. Sejauh ini, sudah 206.000 ha lebih hutan di Sumut telah mengalami perubahan fungsi. Telah berubah menjadi lahan perkebunan, transmigrasi. Dari luas tersebut, sebanyak 163.000 ha untuk areal perkebunan dan 42.900 ha untuk areal transmigrasi.',
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
