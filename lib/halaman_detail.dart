import 'package:flutter/material.dart';

import 'data.dart';

class HalamanDetail extends StatelessWidget {
  final Destinasi destinasi;

  const HalamanDetail({super.key, required this.destinasi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Wisata')),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final layarLebar = constraints.maxWidth >= 700;

          final gambar = _bagianGambar();

          final informasi = _bagianInformasi(context);

          if (layarLebar) {
            return SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: ConstrainedBox(
                constraints: const BoxConstraints(minHeight: 400),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: SizedBox(height: 400, child: gambar)),
                    const SizedBox(width: 28),
                    Expanded(child: informasi),
                  ],
                ),
              ),
            );
          }

          return SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 250, width: double.infinity, child: gambar),
                const SizedBox(height: 24),
                informasi,
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _bagianGambar() {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: BoxDecoration(
            color: destinasi.warna.withValues(alpha: 0.15),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Icon(destinasi.ikon, size: 110, color: destinasi.warna),
        ),
        Positioned(
          top: 16,
          left: 16,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
            decoration: BoxDecoration(
              color: destinasi.warna,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              destinasi.kategori,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _bagianInformasi(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          destinasi.nama,
          style: Theme.of(context).textTheme.headlineMedium
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Icon(Icons.location_on, color: destinasi.warna),
            const SizedBox(width: 6),
            Expanded(
              child: Text(
                destinasi.lokasi,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),
        Text(
          'Deskripsi Wisata',
          style: Theme.of(context).textTheme.titleLarge
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Text(
          destinasi.deskripsi,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(height: 1.6),
        ),
        const SizedBox(height: 24),
        Card(
          child: ListTile(
            leading: Icon(
              Icons.confirmation_number,
              color: destinasi.warna,
              size: 32,
            ),
            title: const Text('Harga Tiket'),
            subtitle: Text(
              destinasi.hargaTiket,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
        ),
      ],
    );
  }
}
