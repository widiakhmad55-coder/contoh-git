import 'package:flutter/material.dart';

class PageUtama extends StatelessWidget {
  const new({super.key, required this.nama, required this.kode});

  final String nama;
  final String kode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Selamat Datang $nama")),
      body: Center(
        child: Column(
          spacing: 12,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
