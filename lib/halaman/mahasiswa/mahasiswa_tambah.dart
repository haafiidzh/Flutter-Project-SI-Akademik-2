import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class MahasiswaTambah extends StatefulWidget {
  const MahasiswaTambah({Key? key, required this.refresh}) : super(key: key);
  final Function refresh;

  @override
  MahasiswaTambahState createState() => MahasiswaTambahState();
}

class MahasiswaTambahState extends State<MahasiswaTambah> {
  final TextEditingController nim = TextEditingController();
  final TextEditingController nama = TextEditingController();
  final TextEditingController alamat = TextEditingController();
  bool sedangLoading = false;
  void simpan(BuildContext context) async {
    if (!sedangLoading) {
      setState(() {
        sedangLoading = true;
      });

      var url = Uri.http('192.168.1.6:3000', 'mahasiswa');
      var hasil = await http.post(
        url,
        headers: {"token": "123456", "Content-Type": "application/json"},
        body: convert.jsonEncode({
          "nim": nim.text,
          "nama": nama.text,
          "alamat": alamat.text,
        }),
      );
      var json = convert.jsonDecode(hasil.body);
//tampilkan pesan
      String pesan = json['pesan'];
      var snackBar = SnackBar(
        content: Text(pesan),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      setState(() {
        sedangLoading = false;
      });
      widget.refresh();
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75,
        backgroundColor: const Color.fromARGB(255, 12, 0, 119),
        title: Text(
          'Tambah Mahasiswa',
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
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            const SizedBox(
                height: 200,
                child: Image(
                  image: AssetImage('assets/mahasiswa/mahasiswa.png'),
                  fit: BoxFit.contain,
                )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  style: GoogleFonts.poppins(fontSize: 16),
                  decoration: InputDecoration(
                    labelText: 'NIM',
                    labelStyle: GoogleFonts.poppins(),
                  ),
                  controller: nim,
                )
              ],
            ),
            // NIM

            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  style: GoogleFonts.poppins(fontSize: 16),
                  decoration: InputDecoration(
                    labelText: 'Nama',
                    labelStyle: GoogleFonts.poppins(),
                  ),
                  controller: nama,
                ),
              ],
            ),
            // Nama

            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  style: GoogleFonts.poppins(fontSize: 16),
                  decoration: InputDecoration(
                    labelText: 'Alamat',
                    labelStyle: GoogleFonts.poppins(),
                  ),
                  controller: alamat,
                ),
              ],
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () => simpan(context),
              child: sedangLoading
                  ? const CircularProgressIndicator()
                  : Container(
                      width: double.infinity,
                      height: 50,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(7)),
                          color: Color.fromARGB(255, 12, 0, 119)),
                      margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('SIMPAN',
                              style: GoogleFonts.mavenPro(
                                  // fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 18)),
                          const SizedBox(
                            width: 8,
                          ),
                          Icon(
                            Icons.file_upload_outlined,
                            color: Colors.grey.shade300,
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
