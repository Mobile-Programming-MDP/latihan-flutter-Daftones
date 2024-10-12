import 'package:flutter/material.dart';

class GaleriFoto extends StatelessWidget {
  const GaleriFoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Galeri Foto",
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            Image.network(
              "https://picsum.photos/id/58/300/200",
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            Container(
              height: 70,
              width: double.infinity,
              margin: const EdgeInsets.all(16),
              padding: EdgeInsets.all(16),
              child: const Center(
                child: Text(
                  "Jalan di Barcelona",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const Divider(height: 20, thickness: 1, color: Colors.grey),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.red,
                    ),
                    SizedBox(width: 8),
                    Text("Lokasi: Barcelona, Spanyol"),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.calendar_month,
                      color: Colors.blue,
                    ),
                    SizedBox(width: 8),
                    Text("Tanggal: 12 Oktober 2024"),
                  ],
                ),
                Divider(height: 20, thickness: 1, color: Colors.grey),
                Text(
                  "Deskripsi",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Text(
                    "Sebuah persimpangan jalan di Barcelona,Spanyol.Foto ini menampilkan berbagai kendaraan yang bergerak dalam arah yang berbeda, menciptakan pemandangan yang sibuk dan energik.",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    )),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ));
  }
}
