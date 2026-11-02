import 'package:flutter/material.dart';
import 'package:tugas04/pages/mainpage.dart';

class InputKasir extends StatefulWidget {
  const new({super.key});

  @override
  State<InputKasir> createState() => _InputKasirState();
}

class _InputKasirState extends State<InputKasir> {
  final namaController = TextEditingController();
  final kodeController = TextEditingController();

  @override
  void dispose() {
    namaController.dispose();
    kodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login'), centerTitle: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 16,
          children: [
            TextField(
              controller: namaController,
              decoration: InputDecoration(hintText: 'Nama Kasir'),
            ),
            TextField(
              controller: kodeController,
              decoration: InputDecoration(hintText: 'Kode Kasir'),
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => PageUtama(
                      nama: namaController.text,
                      kode: kodeController.text,
                    ),
                  ),
                );
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
