import 'package:flutter/material.dart';

class HalamanTentang extends StatelessWidget {
  const HalamanTentang({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tentang Aplikasi')),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.travel_explore, size: 90, color: Colors.teal),
              const SizedBox(height: 20),
              Text(
                'Wisata Sumatera Utara',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineSmall
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              const Text(
                'Aplikasi ini dibuat untuk memperkenalkan berbagai '
                'destinasi wisata menarik di Sumatera Utara. '
                'Pengguna dapat melihat daftar destinasi dan '
                'informasi lengkap setiap tempat wisata.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, height: 1.6),
              ),
              const SizedBox(height: 24),
              const Divider(),
              const ListTile(
                leading: Icon(Icons.person),
                title: Text('Nama'),
                subtitle: Text('Tegas Ramadhan'),
              ),
              const ListTile(
                leading: Icon(Icons.school),
                title: Text('NIM'),
                subtitle: Text('4243250043'),
              ),
              const ListTile(
                leading: Icon(Icons.class_),
                title: Text('Kelas'),
                subtitle: Text('PSIK24D'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
