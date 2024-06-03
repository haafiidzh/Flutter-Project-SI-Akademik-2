import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:google_fonts/google_fonts.dart';

class Dokumen extends StatefulWidget {
  const Dokumen({super.key});

  @override
  DokumenState createState() => DokumenState();
}

class DokumenState extends State<Dokumen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75,
        backgroundColor: const Color.fromARGB(255, 12, 0, 119),
        title: Text(
          'Dokumen',
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
        color: const Color.fromARGB(255, 214, 214, 214),
        height: double.infinity,
        child: widgetInfo(),
      ),
    );
  }

  //membuat variabel untuk response info
  late Future<List> responseInfo;
//info terbaru dari API
  Future<List<dynamic>> getInfo() async {
    var url = Uri.http('192.168.1.6:3000', 'dokumen');
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
                        Container(
                          margin: const EdgeInsets.fromLTRB(5, 20, 20, 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                snapshot.data[index]['judul'],
                                style: GoogleFonts.mavenPro(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                snapshot.data[index]['subjudul'],
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
                    Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        onPressed: () async => await launchUrl(
                          Uri.parse(snapshot.data[index]['file']),
                        ),
                        icon: const Icon(Icons.link, size: 30),
                      ),
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
}
