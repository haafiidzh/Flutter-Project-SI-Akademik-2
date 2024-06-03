import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:google_fonts/google_fonts.dart';
import 'package:dito_sia2/halaman/mahasiswa/mahasiswa_tambah.dart';
import 'package:dito_sia2/halaman/mahasiswa/mahasiswa_detail.dart';

class Mahasiswa extends StatefulWidget {
  const Mahasiswa({super.key});

  @override
  MahasiswaState createState() => MahasiswaState();
}

class MahasiswaState extends State<Mahasiswa> {
  bool isHovered = false;

//membuat variabel untuk response info
  late Future<List> responseInfo;
//info terbaru dari API
  Future<List<dynamic>> getMahasiswa() async {
    var url = Uri.http('192.168.1.6:3000', 'mahasiswa');
    var hasil = await http.get(
      url,
      headers: {"token": "123456"},
    );
    var json = convert.jsonDecode(hasil.body);
    return json['data'];
  }

//memanggil future/fungsi getMahasiswa
//saat inisialisasi awal
  @override
  void initState() {
    super.initState();
    responseInfo = getMahasiswa();
  }

  void refreshData() {
    setState(() {
      responseInfo = getMahasiswa();
    });
  }

  Widget widgetInfo() {
    return FutureBuilder(
      future: responseInfo,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return snapshot.data.length == 0
              ? const Center(child: Text("Data Kosong"))
              : ListView.builder(
                  shrinkWrap: true,
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0, 2),
                            blurRadius: 4,
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      margin: const EdgeInsets.only(top: 15, left: 20),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              const SizedBox(
                                width: 50,
                                height: 50,
                                child: Icon(Icons.person),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.fromLTRB(5, 20, 20, 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      snapshot.data[index]['nama'],
                                      style: GoogleFonts.mavenPro(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Text(
                                      snapshot.data[index]['nim'],
                                      style: GoogleFonts.mavenPro(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          InkWell(
                            onTap: () async => {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MahasiswaDetail(
                                    nim: snapshot.data[index]['nim'],
                                    nama: snapshot.data[index]['nama'],
                                    alamat: snapshot.data[index]['alamat'],
                                    refresh: refreshData,
                                  ),
                                ),
                              )
                            },
                            child: const SizedBox(
                                width: 30,
                                height: 30,
                                child: Icon(Icons.remove_red_eye_outlined)),
                          ),
                          const SizedBox(
                            width: 30,
                          )
                        ],
                      ),
                    );
                  },
                );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75,
        backgroundColor: const Color.fromARGB(255, 12, 0, 119),
        title: Text(
          'Mahasiswa',
          style: GoogleFonts.mavenPro(color: Colors.white),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 12, 0, 119),
        child: const Icon(
          Icons.person_add_alt_1,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MahasiswaTambah(refresh: refreshData),
            ),
          );
        },
      ),
      body: Container(
        color: const Color.fromARGB(255, 214, 214, 214),
        height: double.infinity,
        child: widgetInfo(),
      ),
    );
  }
}
