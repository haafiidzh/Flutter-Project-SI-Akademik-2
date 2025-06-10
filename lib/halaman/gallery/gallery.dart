// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class Gallery extends StatefulWidget {
  const Gallery({Key? key});

  @override
  GalleryState createState() => GalleryState();
}

class FullScreenImage extends StatelessWidget {
  final String imageUrl;

  const FullScreenImage({Key? key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          color: Colors.black,
          child: Center(
            child: Image.network(imageUrl),
          ),
        ),
      ),
    );
  }
}

class GalleryState extends State<Gallery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75,
        backgroundColor: const Color.fromARGB(255, 12, 0, 119),
        title: Text(
          'Galeri',
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
        child: widgetInfo(),
      ),
    );
  }

  late Future<List> responseInfo;

  Future<List<dynamic>> getInfo() async {
    var url = Uri.http('192.168.1.6:3000', 'gallery');
    var hasil = await http.get(
      url,
      headers: {"token": "123456"},
    );
    var json = convert.jsonDecode(hasil.body);
    return json['data'];
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
          return GridView.count(
            crossAxisCount: 2,
            children: List.generate(snapshot.data.length, (index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FullScreenImage(
                        imageUrl: snapshot.data[index]['gambar'],
                      ),
                    ),
                  );
                },
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      height: 280,
                      margin: const EdgeInsets.all(10),
                      child: Image.network(
                        snapshot.data[index]['gambar'],
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Container(
                      height: 40,
                      margin: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(9),
                              topRight: Radius.circular(9)),
                          boxShadow: [
                            BoxShadow(blurRadius: 3, offset: Offset(0, -1))
                          ]),
                    ),
                    SizedBox(
                      height: 40,
                      child: Text(
                        snapshot.data[index]['keterangan'],
                        style: GoogleFonts.mavenPro(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
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
