import 'package:flutter/material.dart';

class TravelPage extends StatefulWidget {
  @override
  _TravelPageState createState() => _TravelPageState();
}

class _TravelPageState extends State<TravelPage> {
  @override
  @override
  Widget build(BuildContext context) {
    double defaultWidth = MediaQuery.of(context).size.width;
    double defaultHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xfff8dcd0),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xfff8dcd0),
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
                image: AssetImage('assets/others/sumut travel.png'),
              ),
              SizedBox(height: defaultHeight / 50),
              Text(
                'WISATA',
                style: TextStyle(
                    fontSize: defaultHeight / 30,
                    color: Color(0xff515151),
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                'Selain menyimpan wisata budaya, Sumatera Utara juga memiliki banyak potensi tempat wisata yang dapat dikembangkan. Berikut beberapa tempat wisata rekomendasi yang wajib dikunjungi ketika berlibur ke Sumatera Utara:',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                'Danau Toba',
                style: TextStyle(
                    fontSize: defaultHeight / 50,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                'Danau Toba merupakan tempat wisata yang paling wajib dikunjungi ketika berada di Sumatera Utara,merupakan danau yang terbentuk oleh letusan gunung berapi beberapa abad yang lalu. Danau ini merupakan salah satu ikon Sumatera Utara. Danau Toba selalu ramai dikunjungi oleh wisatawan baik di hari-hari biasa maupun akhir pekan atau hari libur.',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                'Pulau Samosir',
                style: TextStyle(
                    fontSize: defaultHeight / 50,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                'Pulau Samosir merupakan sebuah pulau yang terletak di tengah-tengah Danau Toba. Untuk mencapai pulau yang memiliki ketinggian 1,000 meter di atas permukaan laut ini, Anda dapat menggunakan kapal ferry atau menempuh jalur darat.',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                'Di pulau ini, Anda akan menjumpai pemandangan alam yang menarik dan indah. Selain itu, Anda juga bisa memperoleh pengalaman baru dengan menikmati keunikan budaya, sejarah juga kuliner khas Batak.',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                'Masjid Raya Medan',
                style: TextStyle(
                    fontSize: defaultHeight / 50,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                'Salah satu ikon Sumatera Utara yang berada Kota Medan adalah Masjid Raya Medan. Mesjid yang dibangun dengan nilai budaya dan sejarah yang tinggi ini merupakan Mesjid terbesar di Sumatera Utara. Jika anda ingin mengunjungi Masjid ini, anda dapat menemukannya di Jln Sisingamangaraja, Medan.',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                'Istana Maimun',
                style: TextStyle(
                    fontSize: defaultHeight / 50,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                'Istana Maimun merupakan istana Kesultanan Deli yang juga telah menjadi salah satu ikon kota Medan. Instana ini berada di Jalan Brigadir Jenderal Katamso, Kelurahan Sukaraja, Kecamatan Medan Maimun. Jika anda gemar berwisata ketempat tempat bersejarah, maka Istana Maimun adalah tempat yang pas untuk anda datangi. Selain dari sejarahnya, Istana ini juga memiliki desain interior yang unik, dimana paduan unsur warisan kebudayaan Melayu tergabung dengan gaya Islam, Spanyol, India serta Italia yang dapat membuat para wisatawan terpukau.',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                'Salju Panas Dolok Tinggi Raja',
                style: TextStyle(
                    fontSize: defaultHeight / 50,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                'Berlokasi di Desa Dolok Merawan, Kec. Tapian Dolok, Kab. Simalungun. Sebenarnya “salju” ini adalah tanah pada kawasan Salju Panas Dolok Tinggi Raja yang bewarna putih, sehngga seperti salju. Selain kawasan bertanah putih ini, Kita juga dapat menjumpai sebuah danau air panas yang memiliki warna biru kehijau-hijauan di sini. Maka itu, tempat ini dinamakan salju panas.',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                'Air Terjun Telaga Dwi Warna',
                style: TextStyle(
                    fontSize: defaultHeight / 50,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                'Air terjun ini letaknya di Kab. Deli Serdang, atau sekitar 2 jam perjalanan menggunakan kendaraan darat dari Kota Medan. Setelah sampai di hutan Sibolangit, anda harus berjalan kaki melintasi hutan yang masih cukup lebat. Perjalanan ini bisa memakan waktu hingga 3 jam atau lebih tergantung dari kecepatan perjalanan anda. Perjalanan ini akan terasa sangat melelahkan tetapi menyenangkan.',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                'Green Hill City',
                style: TextStyle(
                    fontSize: defaultHeight / 50,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                'Bertempat di Desa Suka Makmur Sibolangit, Deli Serdang, Green Hill City adalah sebuah taman rekreasi yang mempunyai banyak jenis permainan. Green Hill City merupakan salah satu taman permainan yang terbesar di Sumatera yang memiliki luas sekitar 20 hektar. Sesuai dengan namanya, Green Hill City berada di daerah pegunungan yang memiliki ketinggian sekitar 550 meter dari permukaan laut sehingga udara yang sejuk dapat ditemukan ditempat ini.',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                'Pagoda Taman Alam Lumbini',
                style: TextStyle(
                    fontSize: defaultHeight / 50,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                'Pagoda ini terletak di kaki Gunung Sibayak, Kab. Karo. Pagoda ini memiliki keunikan berupa pagoda paling tinggi di Indonesia. Pagodanya merupakan replika Pagoda Shwedago Myanmar. Untuk memasuki kawasan ini tidak perlu bayar tiket.',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                'Funland Mickey Holiday',
                style: TextStyle(
                    fontSize: defaultHeight / 50,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                'Brastagi mempunyai Funland Mickey Holiday. Ada beragam wahana permainan menarik yang dapat kita coba, setidaknya berjumlah 34 buah. Diantaranya adalah shoot game, rafling, paint ball, serta outbond, dan lain-lain. Kita bisa bermain sampai puas di semua wahana setelah membeli tiket all in one. Tak hanya wahana permainan, disini juga dapat menikmati wahan lainnya seperti taman bermain dan wahana air yang menyenangkan. Berbagai macam restoranpun juga tersedia di sini.',
                style: TextStyle(
                    fontSize: defaultHeight / 60,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                'Taman Simalem Resort',
                style: TextStyle(
                    fontSize: defaultHeight / 50,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff515151),
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: defaultHeight / 70),
              Text(
                'Taman Simalem Resort yang lokasinya berada di daerah perbukitan sebelah barat laut Danau Toba. Taman wisata ini memiliki lahan seluas 200 hektar sehingga bisa menampung banyak sekali wahana wisata sehingga pengunjung bisa memilih dengan leluasa wisata yang disukai agar merasa puas. Selain itu, Taman Simalem Resort berdiri diatas bukit dengan ketinggian 1500 meter diatas permukaan laut. Hal ini membuat pemandangan indah Danau Toba dan Pulau Samosir bisa terlihat dengan jelas, terutama di siang hari.',
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

