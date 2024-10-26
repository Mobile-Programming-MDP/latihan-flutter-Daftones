import 'package:flutter/material.dart';

class LatihanScreen extends StatelessWidget {
  const LatihanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan UTS"),
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "INFORMATIKA",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Image.asset(
              "Images/Latihan..jpg",
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 8),
            Text(
              "UNIVERSITAS MULTI DATA PALEMBANG",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
            ),
            Text(
              "Kota Palembang, Prov. Sumatera Selatan",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            //Area container merah(Detail Informasi)
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.red[900]),
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    //ToDo : Baris berisi info
                    Row(
                      children: [
                        //kiri : Status dan Akreditasi
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Status",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "Aktif",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Akreditasi",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "Unggul",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                        //kanan : Tanggal berdiri dan jumlah mahasiswa
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Tanggal berdiri",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "9 April 2021",
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "Jumlah Mahasiswa",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "5000",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    //ToDo : Baris berisi kontak
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //No telp:ICON+Text
                        Expanded(
                          child: Row(
                            children: [
                              Icon(
                                Icons.phone,
                                color: Colors.white,
                              ),
                              Text(
                                "089506516117",
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(width: 150),
                              //Email:ICON+TEXT
                              Icon(
                                Icons.mail,
                                color: Colors.white,
                              ),
                              Text(
                                "daffa@gmail.com",
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(width: 150),
                              //website:ICON+TEXT
                              Icon(
                                Icons.web,
                                color: Colors.white,
                              ),
                              Text(
                                "mdp.ac.id",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 18),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: Colors.grey),
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    //ToDo : Baris berisi info
                    Row(
                      children: [
                        //kiri : Status dan Akreditasi
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Alamat",
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                "Jalan Rajawli no 14",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
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
}
