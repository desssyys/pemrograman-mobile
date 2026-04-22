import 'package:flutter/material.dart';
import 'package:layout_flutter/pages/home_page.dart';
import 'package:layout_flutter/pages/item_page.dart';

void main() {
  runApp(MaterialApp(
  routes: {
    '/': (context) => HomePage(),
    '/item': (context) => ItemPage(),
  },
));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: [
          Expanded(
            /* soal 1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /* soal 2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          /* soal 3*/
          Icon(Icons.star, color: Colors.red),
          const Text('41'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Gunung Banyak merupakan salah satu destinasi wisata unggulan di Kota Batu yang menyajikan pemandangan alam memukau dari ketinggian. '
        'Tempat ini sangat populer sebagai lokasi paralayang dan menikmati gemerlap lampu kota di malam hari. '
        'Udara yang sejuk dan panorama pegunungan di sekitarnya memberikan ketenangan bagi setiap pengunjung yang datang.\n\n'
        'Nama: Desy Dwi Puspita\n'
        'NIM: 244107060145',
        softWrap: true,
      ),
    );

    return Scaffold(
      appBar: AppBar(title: const Text('Flutter layout demo')),
      body: ListView(
        children: [
          Image.asset(
            'images/gunungbanyak.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          titleSection,
          buttonSection,
          textSection,
        ],
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
