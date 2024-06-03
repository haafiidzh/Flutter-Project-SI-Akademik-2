import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';
import 'dart:convert' as convert;
import 'dart:async';

import 'halaman/informasi/informasi.dart';
import 'halaman/gallery/gallery.dart';
import 'halaman/dokumen/dokumen.dart';
import 'halaman/profil/profil.dart';
import 'halaman/mahasiswa/mahasiswa.dart';

Widget mainMenu(BuildContext context) {
  return Stack(alignment: AlignmentDirectional.centerStart, children: [
    Container(
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 224, 221, 221),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10))),
      width: double.infinity,
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                Text(
                  'Halo, ',
                  style: GoogleFonts.mavenPro(),
                ),
                Text(
                  'DITO PARADITAMA',
                  style: GoogleFonts.mavenPro(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Stack(
            alignment: Alignment.centerLeft,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 20),
                width: 260,
                child: const Image(image: AssetImage('assets/main/robot.png')),
              ),
              SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      // Menu 1
                      GestureDetector(
                          onTap: () {
                            // ignore: avoid_print
                            print("Klik menu profil");
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Profil(),
                                ));
                          },
                          child: Container(
                            width: 150,
                            padding: const EdgeInsets.all(20),
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(18)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(0, 2),
                                    blurRadius: 4,
                                    spreadRadius: 2,
                                  )
                                ]),
                            height: 80,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text('Profil',
                                    style: GoogleFonts.mavenPro(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500)),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Icon(Icons.account_circle,
                                    size: 45.0, color: Colors.black)
                              ],
                            ),
                          )),

                      const SizedBox(
                        height: 15,
                      ),

                      // Menu 2
                      GestureDetector(
                          onTap: () {
                            // ignore: avoid_print
                            print("Klik menu galeri");
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Gallery(),
                                ));
                          },
                          child: Container(
                            width: 155,
                            padding: const EdgeInsets.all(20),
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(18)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(0, 2),
                                    blurRadius: 4,
                                    spreadRadius: 2,
                                  )
                                ]),
                            height: 80,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text('Galeri',
                                    style: GoogleFonts.mavenPro(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500)),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Icon(Icons.picture_in_picture,
                                    size: 40.0, color: Colors.black),
                              ],
                            ),
                          )),

                      const SizedBox(
                        height: 15,
                      ),

                      // Menu 3
                      GestureDetector(
                          onTap: () {
                            // ignore: avoid_print
                            print("Klik menu informasi");
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Informasi(),
                                ));
                          },
                          child: Container(
                            width: 180,
                            padding: const EdgeInsets.all(20),
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(18)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(0, 2),
                                    blurRadius: 4,
                                    spreadRadius: 2,
                                  )
                                ]),
                            height: 80,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text('Informasi',
                                    style: GoogleFonts.mavenPro(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500)),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Icon(Icons.info_outline,
                                    size: 40.0, color: Colors.black),
                              ],
                            ),
                          )),

                      const SizedBox(
                        height: 15,
                      ),

                      // Menu 4
                      GestureDetector(
                          onTap: () {
                            // ignore: avoid_print
                            print("Klik menu dokumen");
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Dokumen(),
                                ));
                          },
                          child: Container(
                            width: 190,
                            padding: const EdgeInsets.all(20),
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(18)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(0, 2),
                                    blurRadius: 4,
                                    spreadRadius: 2,
                                  )
                                ]),
                            height: 80,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text('Dokumen',
                                    style: GoogleFonts.mavenPro(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500)),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Icon(Icons.pages_outlined,
                                    size: 45.0, color: Colors.black),
                              ],
                            ),
                          )),

                      const SizedBox(
                        height: 15,
                      ),

                      // Menu 5
                      GestureDetector(
                          onTap: () {
                            // ignore: avoid_print
                            print("Klik menu mahasiswa");
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Mahasiswa(),
                                ));
                          },
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(18)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(0, 2),
                                    blurRadius: 4,
                                    spreadRadius: 2,
                                  )
                                ]),
                            height: 80,
                            width: 205,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text('Mahasiswa',
                                    style: GoogleFonts.mavenPro(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500)),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Icon(Icons.account_box_outlined,
                                    size: 45.0, color: Colors.black),
                              ],
                            ),
                          )),
                    ],
                  )),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    ),
  ]);
}

final List<String> info = <String>['Info 1', 'Info 2', 'Info 3'];

var infoTerbaru = Container(
  color: Colors.white,
  child: ListView.separated(
    shrinkWrap: true,
    padding: const EdgeInsets.all(8),
    itemCount: info.length,
    itemBuilder: (BuildContext context, int index) {
      return Container(
        height: 100,
        color: Colors.cyan,
        child: Center(child: Text('List ${info[index]}')),
      );
    },
    separatorBuilder: (BuildContext context, int index) => const Divider(),
  ),
);

// info terbaru dari API
Future<List<dynamic>> getInfo() async {
  var url = Uri.https('udb.ac.id', 'json/info-akademik');
  var hasil = await http.get(url);
  return convert.jsonDecode(hasil.body);
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sistem Informasi Akademik',
      theme: ThemeData(
        useMaterial3: true,
        textTheme: TextTheme(
            titleLarge:
                GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.w500)),
        colorScheme: ColorScheme.fromSeed(
                seedColor: const Color.fromARGB(255, 33, 3, 143))
            .copyWith(background: Colors.indigo.shade50),
      ),
      home: const MyHomePage(title: 'Main Menu'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Future<List> responseInfo;

  void _incrementCounter() {
    setState(() {});
  }

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
          return CarouselSlider.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (BuildContext context, int index, int realIndex) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      // borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(0, 2),
                          blurRadius: 6,
                          spreadRadius: 2,
                        )
                      ]),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        color: Colors.white,
                        height: 150.0,
                        width: double.infinity,
                        child: Image.network(
                          snapshot.data[index]['gambar'],
                          fit: BoxFit.cover,
                          height: double.infinity,
                          width: double.infinity,
                        ),
                      ),
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          Container(
                            height: 70,
                            width: double.infinity,
                            child: Container(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      snapshot.data[index]['judul'],
                                      style: GoogleFonts.mavenPro(
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      snapshot.data[index]['tanggal'],
                                      style: GoogleFonts.mavenPro(
                                        fontSize: 10.0,
                                      ),
                                    )
                                  ]),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                            width: 50,
                            // color: Colors.blue,
                            child: IconButton(
                              onPressed: () async => await launchUrl(
                                Uri.parse(snapshot.data[index]['url']),
                              ),
                              icon: Icon(Icons.link, size: 30),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
            options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 16 / 9,
                enlargeCenterPage: false,
                height: 270,
                viewportFraction: 1),
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
          elevation: 10,
          title: Center(
            child: Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              padding: const EdgeInsets.all(8.0),
              width: 50,
              height: 50,
              child: const Image(
                image: AssetImage('assets/main/logo_udb.png'),
                fit: BoxFit.contain,
              ),
            ),
          )),
      body: Container(
        color: const Color.fromARGB(255, 12, 0, 119),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              mainMenu(context),
              Container(
                color: const Color.fromARGB(255, 224, 221, 221),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 224, 221, 221),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 3,
                          blurRadius: 3,
                          offset: const Offset(0, -3),
                        )
                      ]),
                  child: Column(
                    children: [
                      Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'Berita Terbaru',
                            style: GoogleFonts.mavenPro(
                                fontSize: 21, fontWeight: FontWeight.w400),
                          )),
                      widgetInfo(),
                      const SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
