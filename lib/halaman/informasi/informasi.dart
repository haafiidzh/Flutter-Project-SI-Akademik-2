import 'package:dito_sia2/halaman/informasi/informasi_detail.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class Informasi extends StatefulWidget {
  InformasiState createState() => InformasiState();
}

class InformasiState extends State<Informasi> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75,
        backgroundColor: const Color.fromARGB(255, 12, 0, 119),
        title: Text(
          'Informasi',
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
      body: Container(
        color: Color.fromARGB(255, 214, 214, 214),
        height: double.infinity,
        child: widgetInfo(),
      ),
    );
  }

  //membuat variabel untuk response info
  late Future<List> responseInfo;
//info terbaru dari API
  Future<List<dynamic>> getInfo() async {
    var url = Uri.http('192.168.1.6:3000', 'informasi');
    var hasil = await http.get(
      url,
      headers: {"token": "123456"},
    );
    var json = convert.jsonDecode(hasil.body);
    return json['data'];
  }

//memanggil future/fungsi getInfo
//saat inisialisasi awal
  @override
  void initState() {
    responseInfo = getInfo();
    super.initState();
  }

  Widget widgetInfo() {
    return FutureBuilder(
      future: responseInfo,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            shrinkWrap: true,
            itemCount: snapshot.data.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    child: Container(
                      color: Colors.white,
                      width: double.infinity,
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        children: [
                          Image.network(
                            snapshot.data[index]['gambar'],
                          ),
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                                boxShadow: [
                                  BoxShadow(
                                      offset: Offset(0, -3),
                                      blurRadius: 1,
                                      spreadRadius: 1,
                                      color: Colors.black.withOpacity(0.2))
                                ]),
                            padding: const EdgeInsets.all(20),
                            child: Text(
                              snapshot.data[index]['judul'],
                              style: GoogleFonts.mavenPro(
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () async => {
                      //disini nanti memanggil detail informasi
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => InformasiDetail(
                                  judul: snapshot.data[index]['judul'],
                                  konten: snapshot.data[index]['konten'],
                                  gambar: snapshot.data[index]['gambar'])))
                    },
                  ),
                ],
              );
            },
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
