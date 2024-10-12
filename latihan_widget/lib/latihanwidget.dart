import 'package:flutter/material.dart';

class WidgetDemo extends StatelessWidget {
  const WidgetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("WidgetDemo")),
        body: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              margin: const EdgeInsets.all(16),
              padding: EdgeInsets.all(16),
              color: Colors.blue,
              child: const Center(
                child: Text(
                  "Daffa Yudha Musyaffa",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Text("Ini adalah Tombol elevated"),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Text("Rating 4.5")
              ],
            ),
            Image.network(
              "https://picsum.photos/id/58/300/200",
              width: double.infinity,
              height: 200,
              fit: BoxFit.contain ,
            ),
          ],
        ));
  }
}
