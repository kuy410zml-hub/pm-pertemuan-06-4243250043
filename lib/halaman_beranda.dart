import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'data.dart';
import 'widgets/kartu_destinasi.dart';

class HalamanBeranda extends StatelessWidget {
  const HalamanBeranda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 24, 20, 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Jelajahi Sumatera Utara',
                      style: Theme.of(context).textTheme.headlineMedium
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Temukan destinasi wisata menarik di Sumatera Utara.',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    const SizedBox(height: 24),
                    Text(
                      'Destinasi Wisata',
                      style: Theme.of(context).textTheme.titleLarge
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 12),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
              sliver: SliverLayoutBuilder(
                builder: (context, constraints) {
                  final lebar = constraints.crossAxisExtent;

                  final int jumlahKolom;

                  if (lebar < 600) {
                    jumlahKolom = 2;
                  } else if (lebar < 900) {
                    jumlahKolom = 3;
                  } else {
                    jumlahKolom = 4;
                  }

                  return SliverGrid(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: jumlahKolom,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                      childAspectRatio: 0.85,
                    ),
                    delegate: SliverChildBuilderDelegate((context, index) {
                      final destinasi = daftarDestinasi[index];

                      return KartuDestinasi(
                        destinasi: destinasi,
                        onTap: () {
                          context.push('/destinasi/${destinasi.id}');
                        },
                      );
                    }, childCount: daftarDestinasi.length),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
