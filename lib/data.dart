import 'package:flutter/material.dart';

class Destinasi {
  final int id;
  final String nama;
  final String lokasi;
  final String kategori;
  final String deskripsi;
  final String hargaTiket;
  final IconData ikon;
  final Color warna;

  const Destinasi({
    required this.id,
    required this.nama,
    required this.lokasi,
    required this.kategori,
    required this.deskripsi,
    required this.hargaTiket,
    required this.ikon,
    required this.warna,
  });
}

const List<Destinasi> daftarDestinasi = [
  Destinasi(
    id: 1,
    nama: 'Danau Toba',
    lokasi: 'Kabupaten Toba',
    kategori: 'Wisata Alam',
    deskripsi:
        'Danau Toba merupakan danau vulkanik terbesar di Indonesia. '
        'Tempat ini terkenal dengan pemandangan alam yang indah dan '
        'Pulau Samosir yang berada di tengah danau.',
    hargaTiket: 'Mulai Rp10.000',
    ikon: Icons.water,
    warna: Colors.blue,
  ),
  Destinasi(
    id: 2,
    nama: 'Bukit Lawang',
    lokasi: 'Kabupaten Langkat',
    kategori: 'Wisata Alam',
    deskripsi:
        'Bukit Lawang merupakan kawasan wisata alam yang terkenal '
        'dengan hutan tropis dan habitat orangutan Sumatera.',
    hargaTiket: 'Mulai Rp5.000',
    ikon: Icons.forest,
    warna: Colors.green,
  ),
  Destinasi(
    id: 3,
    nama: 'Berastagi',
    lokasi: 'Kabupaten Karo',
    kategori: 'Wisata Pegunungan',
    deskripsi:
        'Berastagi merupakan daerah dataran tinggi dengan udara sejuk, '
        'pemandangan pegunungan, serta perkebunan buah dan sayuran.',
    hargaTiket: 'Mulai Rp10.000',
    ikon: Icons.landscape,
    warna: Colors.orange,
  ),
  Destinasi(
    id: 4,
    nama: 'Istana Maimun',
    lokasi: 'Kota Medan',
    kategori: 'Wisata Sejarah',
    deskripsi:
        'Istana Maimun merupakan bangunan bersejarah peninggalan '
        'Kesultanan Deli yang memiliki arsitektur khas Melayu, '
        'Islam, dan Eropa.',
    hargaTiket: 'Mulai Rp10.000',
    ikon: Icons.account_balance,
    warna: Colors.amber,
  ),
  Destinasi(
    id: 5,
    nama: 'Air Terjun Sipiso-piso',
    lokasi: 'Kabupaten Karo',
    kategori: 'Wisata Alam',
    deskripsi:
        'Air Terjun Sipiso-piso merupakan salah satu air terjun '
        'tertinggi di Indonesia yang menawarkan pemandangan alam '
        'yang menarik.',
    hargaTiket: 'Mulai Rp5.000',
    ikon: Icons.waterfall_chart,
    warna: Colors.teal,
  ),
  Destinasi(
    id: 6,
    nama: 'Pulau Samosir',
    lokasi: 'Kabupaten Samosir',
    kategori: 'Wisata Budaya',
    deskripsi:
        'Pulau Samosir berada di tengah Danau Toba dan dikenal '
        'dengan kebudayaan Batak, rumah adat, serta panorama alamnya.',
    hargaTiket: 'Mulai Rp10.000',
    ikon: Icons.beach_access,
    warna: Colors.deepPurple,
  ),
];
