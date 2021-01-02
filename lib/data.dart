import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dongeng{
  String judul;
  String daerah;
  String cover;
  int jumlahDibaca;
  int jumlahDidongengkanPengguna1;
  String deskripsi;

  Dongeng({this.judul, this.daerah, this.cover, this.jumlahDibaca, this.jumlahDidongengkanPengguna1, this.deskripsi});
}

class Pengguna{
  String id;
  String julukan;
  String namaDepan;
  String namaBelakang;
  double rating;
  String peringkatSebagaiPembaca;
  String peringkatSebagaiDubber;
  String profilPic;
  DateTime bergabung;
  int jumlahDidengar;
  int jumlahBukuDibaca;
  int jumlahPoin;
  int peringkat;
  bool terbuka;

  Pengguna({
    this.id, this.julukan, this.namaDepan, this.namaBelakang,
    this.rating, this.peringkatSebagaiPembaca, this.peringkatSebagaiDubber,
    this.bergabung, this.jumlahDidengar, this.jumlahBukuDibaca, this.jumlahPoin,
    this.profilPic, this.peringkat, this.terbuka
  });
}

class KomponenEfekSuara{
  String labelEfek;
  String iconName;
  double value;
  bool active;
  Color color;

  KomponenEfekSuara({this.labelEfek, this.iconName, this.value, this.active, this.color});
}

class PembelianDubbing{
  String judul;
  String namaDubber;
  DateTime tanggalPembelian;
  String via;
  double jumlah;
  bool status;

  PembelianDubbing({this.judul, this.namaDubber, this.tanggalPembelian, this.via, this.jumlah, this.status});
}

class PembelianCerita{
  String judul;
  String daerah;
  DateTime tanggalPembelian;
  String via;
  double jumlah;
  bool status;

  PembelianCerita({this.judul, this.daerah, this.tanggalPembelian, this.via, this.jumlah, this.status});
}

class TandaTerimaDubbing{
  String judul;
  String namaPembeli;
  DateTime tanggalPembelian;
  String via;
  double jumlah;

  TandaTerimaDubbing({this.judul, this.namaPembeli, this.tanggalPembelian, this.via, this.jumlah});
}

Dongeng dongeng_1 = Dongeng(
    judul: 'Legenda Danau Toba', daerah: 'Sumatra Utara',
    cover: 'Danau_Toba.png', jumlahDibaca: 498, jumlahDidongengkanPengguna1: 391,
    deskripsi: 'Bercerita tentang seorang petani yg bernama pak Toba yg mengingkari janjinya kepada istrinya, hingga terjadi malapetaka akibat janjinya. malapetaka itu berupa hujan yg deras hingga menggenangi seluruh desa dan menjadi danau yg disebut danau toba.'
);

Dongeng dongeng_2 = Dongeng(
    judul: 'Bawang Merah dan Bawang Putih', daerah: 'Riau',
    cover: 'Bamer Baput.png', jumlahDibaca: 500, jumlahDidongengkanPengguna1: 176,
    deskripsi: 'Kisah ini menceritakan tentang dua orang gadis kakak beradik yang memiliki sifat yang berbeda dan bertolak belakang, serta seorang ibu tiri yang tidak adil dan pilih kasih. Namun suatu hari ada kejadian yang membuat kehidupan bawang putih berubah.'
);

Dongeng dongeng_3 = Dongeng(
    judul: 'Legenda Buaya Perunggu', daerah: 'Maluku Utara',
    cover: 'Buaya Perunggu.png', jumlahDibaca: 499, jumlahDidongengkanPengguna1: 150,
    deskripsi: 'Di Teluk baguala hiduplah seekor Buaya Tembaga yang baik hati. Buaya ini disebut Buaya Tembaga karena kulitnya berwarna kekuning-kuningan serupa warna tembaga. Pada suatu hari, datanglah sepasang suami istri memohon bantuannya untuk melawan ular raksasa.'
);

Dongeng dongeng_4 = Dongeng(
    judul: 'Lutung Kasarung dan Purbasari', daerah: 'Jawa Tengah',
    cover: 'Lutung Kasarung.png', jumlahDibaca: 497, jumlahDidongengkanPengguna1: 98,
    deskripsi: 'Mengisahkan legenda masyarakat Sunda tentang perjalanan Sanghyang Guruminda dari Kahyangan yang diturunkan ke bumi dalam wujud seekor monyet. Dalam perjalanannya di Bumi, sang lutung bertemu dengan putri Purbasari yang diusir oleh saudaranya yang pendengki, Purbararang.'
);

Dongeng dongeng_5 = Dongeng(
    judul: 'Malin Kundang si Anak Durhaka', daerah: 'Sumatra Barat',
    cover: 'Malin kundang.png', jumlahDibaca: 496, jumlahDidongengkanPengguna1: 63,
    deskripsi: 'Berkisah tentang seorang anak bernama Malin yang hidup bersama ibunya. Ia pergi merantau untuk merubah nasibnya, setelah sukses ia pulang kembali ke kampung halamannya, sang ibu yang menantinya tidak ia akui karena merasa malu dan akhirnya ia menerima kutukan dari ibunya.'
);

Dongeng dongeng_6 = Dongeng(
    judul: 'Legenda Tangkuban Perahu', daerah: 'Jawa Barat',
    cover: 'Tangkuban Perahu.png', jumlahDibaca: 495, jumlahDidongengkanPengguna1: 62,
    deskripsi: 'Mengisahkan Sangkuriang yang jatuh cinta kepada ibunya, Dayang Sumbi. Untuk menggagalkan niat anaknya menikahinya, Dayang Sumbi mengajukan syarat supaya Sangkuriang membuat sebuah telaga dan sebuah perahu dalam semalam.'
);

Dongeng dongeng_7 = Dongeng(
    judul: 'Timun Mas dan Raksasa', daerah: 'Jawa Tengah',
    cover: 'Timun mas.png', jumlahDibaca: 500, jumlahDidongengkanPengguna1: 60,
    deskripsi: 'Karena sangat menginginkan anak, Mbok Rondo meminta bantuan kepada raksasa. Keinginannya akan dikabulkan namun disertai syarat yakni apabila anak yang lahir adalah wanita maka ia harus menyerahkan kepada raksasa untuk disantap.'
);

Pengguna pengguna_1 = Pengguna(
  id: '771920173', julukan: 'Pak', namaDepan: 'Agus', namaBelakang: 'Saka Retno', rating: 5.0,
  peringkatSebagaiPembaca: 'Pembaca Tekun', peringkatSebagaiDubber: 'Dubber Professional',
  bergabung: DateTime(2020, 3, 12), jumlahDidengar: 1000, jumlahBukuDibaca: 300,
  jumlahPoin: 1500, profilPic: 'profil_1.png', peringkat: 1, terbuka: true,
);

Pengguna pengguna_2 = Pengguna(
    id: '771534921', julukan: 'Pak', namaDepan: 'Anto', namaBelakang: 'Broadway', rating: 4.9,
    peringkatSebagaiPembaca: 'Pembaca Rajin', peringkatSebagaiDubber: 'Dubber Professional',
    bergabung: DateTime(2020, 5, 23), jumlahDidengar: 745, jumlahBukuDibaca: 32,
    jumlahPoin: 1000, profilPic: 'profil_2.png', peringkat: 3, terbuka: false
);

Pengguna pengguna_3 = Pengguna(
    id: '771920173', julukan: 'Pak', namaDepan: 'Agung', namaBelakang: 'Borodin', rating: 4.5,
    peringkatSebagaiPembaca: 'Pembaca Awal', peringkatSebagaiDubber: 'Dubber Pemula',
    bergabung: DateTime(2020, 7, 20), jumlahDidengar: 90, jumlahBukuDibaca: 24,
    jumlahPoin: 500, profilPic: 'profil_3.png', peringkat: 9, terbuka: false
);

Pengguna pengguna_4 = Pengguna(
    id: '771281029', julukan: 'Ibu', namaDepan: 'Cindy', namaBelakang: 'Pramudya', rating: 5.0,
    peringkatSebagaiPembaca: 'Pembaca Tekun', peringkatSebagaiDubber: 'Dubber Senior',
    bergabung: DateTime(2020, 5, 23), jumlahDidengar: 230, jumlahBukuDibaca: 50,
    jumlahPoin: 340, profilPic: 'profil_4.png', peringkat: 6, terbuka: false
);

Pengguna pengguna_5 = Pengguna(
    id: '7711092736', julukan: 'Ibu', namaDepan: 'Sisca', namaBelakang: 'Wulandary', rating: 5.0,
    peringkatSebagaiPembaca: 'Pembaca Rajin', peringkatSebagaiDubber: 'Dubber Professional',
    bergabung: DateTime(2020, 6, 26), jumlahDidengar: 500, jumlahBukuDibaca: 45,
    jumlahPoin: 600, profilPic: 'profil_5.png', peringkat: 2, terbuka: false
);

Pengguna pengguna_6 = Pengguna(
    id: '771291926', julukan: 'Ibu', namaDepan: 'Desi', namaBelakang: 'Nugroho', rating: 4.8,
    peringkatSebagaiPembaca: 'Pembaca Awal', peringkatSebagaiDubber: 'Dubber Senior',
    bergabung: DateTime(2020, 3, 12), jumlahDidengar: 100, jumlahBukuDibaca: 22,
    jumlahPoin: 400, profilPic: 'profil_6.png', peringkat: 7, terbuka: false
);

Pengguna pengguna_7 = Pengguna(
    id: '771620192', julukan: 'Pak', namaDepan: 'John', namaBelakang: 'Travolta', rating: 5.0,
    peringkatSebagaiPembaca: 'Pembaca Rajin', peringkatSebagaiDubber: 'Dubber Pemula',
    bergabung: DateTime(2020, 4, 21), jumlahDidengar: 20, jumlahBukuDibaca: 36,
    jumlahPoin: 100, profilPic: 'profil_7.png', peringkat: 8, terbuka: false
);

Pengguna pengguna_8 = Pengguna(
    id: '771109321', julukan: 'Pak', namaDepan: 'Tono', namaBelakang: 'Jeager', rating: 5.0,
    peringkatSebagaiPembaca: 'Pembaca Rajin', peringkatSebagaiDubber: 'Dubber Senior',
    bergabung: DateTime(2020, 4, 7), jumlahDidengar: 332, jumlahBukuDibaca: 39,
    jumlahPoin: 120, profilPic: 'profil_8.png', peringkat: 5, terbuka: false
);

Pengguna pengguna_9 = Pengguna(
    id: '771147371', julukan: 'Pak', namaDepan: 'Joe', namaBelakang: 'Ackerman', rating: 4.9,
    peringkatSebagaiPembaca: 'Pembaca Tekun', peringkatSebagaiDubber: 'Dubber Professional',
    bergabung: DateTime(2020, 5, 2), jumlahDidengar: 550, jumlahBukuDibaca: 100,
    jumlahPoin: 490, profilPic: 'profil_9.png', peringkat: 4, terbuka: false
);

KomponenEfekSuara efek1 = KomponenEfekSuara(
    labelEfek: 'Hujan', iconName: 'icon_rain.png', value: 50.0, active: false, color: Color(0xfffdb9c4)
);

KomponenEfekSuara efek2 = KomponenEfekSuara(
    labelEfek: 'Api Unggun', iconName: 'icon_bonfire.png', value: 50.0, active: false, color: Color(0xfffdb9c4)
);

KomponenEfekSuara efek3 = KomponenEfekSuara(
    labelEfek: 'Angin', iconName: 'icon_wind.png', value: 50.0, active: false, color: Color(0xfffdb9c4)
);

KomponenEfekSuara efek4 = KomponenEfekSuara(
    labelEfek: 'Sungai', iconName: 'icon_wave.png', value: 50.0, active: false, color: Color(0xfffdb9c4)
);

KomponenEfekSuara efek5 = KomponenEfekSuara(
    labelEfek: 'Air Terjun', iconName: 'icon_waterfall.png', value: 50.0, active: false, color: Color(0xfffdb9c4)
);

KomponenEfekSuara efek6 = KomponenEfekSuara(
    labelEfek: 'Ombak', iconName: 'icon_ocean.png', value: 50.0, active: false, color: Color(0xfffdb9c4)
);

KomponenEfekSuara efek7 = KomponenEfekSuara(
    labelEfek: 'Burung', iconName: 'icon_bird.png', value: 50.0, active: false, color: Color(0xfffdb9c4)
);

KomponenEfekSuara efek8 = KomponenEfekSuara(
    labelEfek: 'Katak', iconName: 'icon_frog.png', value: 50.0, active: false, color: Color(0xfffdb9c4)
);

KomponenEfekSuara efek9 = KomponenEfekSuara(
    labelEfek: 'Jangkrik', iconName: 'icon_grasshopper.png', value: 50.0, active: false, color: Color(0xfffdb9c4)
);

PembelianDubbing buktiPembelianDubbing1 = PembelianDubbing(
    judul: 'Legenda Buaya Perunggu', namaDubber: 'John Travolta',
    tanggalPembelian: DateTime(2020, 12, 29), via: 'OVO', jumlah: 5000, status: true
);

PembelianDubbing buktiPembelianDubbing2 = PembelianDubbing(
    judul: 'Timun Mas dan Raksasa', namaDubber: 'Joe Ackerman',
    tanggalPembelian: DateTime(2020, 12, 29), via: 'Dana', jumlah: 4000, status: true
);

PembelianDubbing buktiPembelianDubbing3 = PembelianDubbing(
    judul: 'Legenda Tangkuban Perahu', namaDubber: 'Anto Broadway',
    tanggalPembelian: DateTime(2020, 12, 28), via: 'Gopay', jumlah: 3000, status: true
);

PembelianCerita buktiPembelianCerita1 = PembelianCerita(
    judul: 'Lutung Kasarung dan Purbasari', daerah: 'Jawa Barat',
    tanggalPembelian: DateTime(2020, 12, 29), via: 'OVO', jumlah: 5000, status: true
);

PembelianCerita buktiPembelianCerita2 = PembelianCerita(
    judul: 'Bawang Merah dan Bawang Putih', daerah: 'Riau',
    tanggalPembelian: DateTime(2020, 12, 29), via: 'OVO', jumlah: 5000, status: true
);

PembelianCerita buktiPembelianCerita3 = PembelianCerita(
    judul: 'Malin Kundang si Anak Durhaka', daerah: 'Sumatra Barat',
    tanggalPembelian: DateTime(2020, 12, 28), via: 'Dana', jumlah: 5000, status: true
);

TandaTerimaDubbing buktiTerimaDubbing1 = TandaTerimaDubbing(
    judul: 'Timun Mas dan Raksasa', namaPembeli: 'Adit Hendrawan',
    tanggalPembelian: DateTime(2020, 12, 29), via: 'OVO', jumlah: 5000
);

TandaTerimaDubbing buktiTerimaDubbing2 = TandaTerimaDubbing(
    judul: 'Timun Mas dan Raksasa', namaPembeli: 'Budi Gunawan',
    tanggalPembelian: DateTime(2020, 12, 28), via: 'Dana', jumlah: 5000
);

TandaTerimaDubbing buktiTerimaDubbing3 = TandaTerimaDubbing(
    judul: 'Legenda Tangkuban Perahu', namaPembeli: 'Dodi Cahyono',
    tanggalPembelian: DateTime(2020, 12, 28), via: 'OVO', jumlah: 5000
);

TandaTerimaDubbing buktiTerimaDubbing4 = TandaTerimaDubbing(
    judul: 'Legenda Tangkuban Perahu', namaPembeli: 'Budi Gunawan',
    tanggalPembelian: DateTime(2020, 12, 19), via: 'Gopay', jumlah: 5000
);

List<Pengguna> daftar_1= [pengguna_1, pengguna_5, pengguna_2, pengguna_9, pengguna_8];
List<Pengguna> daftar_2= [pengguna_1, pengguna_5, pengguna_2, pengguna_9, pengguna_8, pengguna_4];
List<Pengguna> daftar_3= [pengguna_1, pengguna_5, pengguna_4, pengguna_8, pengguna_7, pengguna_2, pengguna_9, pengguna_6, pengguna_3];

List<Dongeng> daftarDongeng1 = [dongeng_1, dongeng_3, dongeng_2];
List<Dongeng> daftarDongeng2 = [dongeng_4, dongeng_7, dongeng_6];
List<Dongeng> daftarDongeng3 = [dongeng_2, dongeng_3, dongeng_1, dongeng_4, dongeng_5, dongeng_6, dongeng_7];
List<Dongeng> daftarDongeng4 = [dongeng_4, dongeng_5, dongeng_6];
List<Dongeng> daftarDongeng5 = [dongeng_7];
List<Dongeng> daftarDongeng6 = [dongeng_1, dongeng_2, dongeng_3, dongeng_4, dongeng_5, dongeng_6, dongeng_7];
List<Dongeng> daftarDongeng7 = [dongeng_1, dongeng_2];

List<KomponenEfekSuara> barisEfek1 = [efek1, efek2, efek3];
List<KomponenEfekSuara> barisEfek2 = [efek4, efek5, efek6];
List<KomponenEfekSuara> barisEfek3 = [efek7, efek8, efek9];