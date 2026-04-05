import 'package:flutter/material.dart';

class ProdukDetail extends StatefulWidget {
  final String kodeProduk;
  final String namaProduk;
  final int harga;

  const ProdukDetail({
    super.key,
    required this.kodeProduk,
    required this.namaProduk,
    required this.harga,
  });

  @override
  State<ProdukDetail> createState() => _ProdukDetailState();
}

class _ProdukDetailState extends State<ProdukDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Produk'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // biar rata kiri
          children: [
            const Text(
              "Informasi Produk",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),

            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildItem("Kode Produk", widget.kodeProduk),
                    const SizedBox(height: 8),
                    _buildItem("Nama Produk", widget.namaProduk),
                    const SizedBox(height: 8),
                    _buildItem(
                      "Harga",
                      "Rp ${widget.harga}",
                      isBold: true,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildItem(String title, String value, {bool isBold = false}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 3,
          child: Text(
            title,
            style: const TextStyle(fontSize: 16),
          ),
        ),
        const Text(" : "),
        Expanded(
          flex: 5,
          child: Text(
            value,
            style: TextStyle(
              fontSize: 16,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
              color: isBold ? Colors.green : Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}