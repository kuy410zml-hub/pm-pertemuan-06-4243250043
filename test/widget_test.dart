import 'package:flutter_test/flutter_test.dart';
import 'package:wisata_sumut_4243250043/main.dart';

void main() {
  testWidgets('Aplikasi menampilkan halaman beranda', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const AplikasiWisata());

    await tester.pumpAndSettle();

    expect(find.text('Jelajahi Sumatera Utara'), findsOneWidget);
    expect(find.text('Destinasi Wisata'), findsOneWidget);
    expect(find.text('Danau Toba'), findsOneWidget);
  });
}
