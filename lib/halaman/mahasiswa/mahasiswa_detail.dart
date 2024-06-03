import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:google_fonts/google_fonts.dart';

class MahasiswaDetail extends StatefulWidget {
  const MahasiswaDetail({
    Key? key,
    required this.nim,
    required this.nama,
    required this.alamat,
    required this.refresh,
  }) : super(key: key);
  final String nim;
  final String nama;
  final String alamat;
  final Function refresh;
  MahasiswaDetailState createState() => MahasiswaDetailState();
}

class MahasiswaDetailState extends State<MahasiswaDetail> {
  final TextEditingController nim = TextEditingController();
  final TextEditingController nama = TextEditingController();
  final TextEditingController alamat = TextEditingController();
  bool sedangLoading = false;
  @override
  void initState() {
    super.initState();
    nim.text = widget.nim;
    nama.text = widget.nama;
    alamat.text = widget.alamat;
  }

  void ubah(BuildContext context) async {
    if (!sedangLoading) {
      setState(() {
        sedangLoading = true;
      });
      var url = Uri.http('192.168.1.6:3000', 'mahasiswa');
      var hasil = await http.put(
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

  void hapus(BuildContext context) async {
    if (!sedangLoading) {
      setState(() {
        sedangLoading = true;
      });
      var url = Uri.http('192.168.1.6:3000', 'mahasiswa');
      var hasil = await http.delete(
        url,
        headers: {"token": "123456", "Content-Type": "application/json"},
        body: convert.jsonEncode({
          "nim": nim.text,
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

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75,
        backgroundColor: const Color.fromARGB(255, 12, 0, 119),
        title: Text(
          widget.nama,
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
        padding: const EdgeInsets.all(10),
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
                  enabled: false,
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
            // Alamat

            const SizedBox(height: 20),

            Row(
              children: [
                InkWell(
                    onTap: () => hapus(context),
                    child: sedangLoading
                        ? const CircularProgressIndicator()
                        : Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(7)),
                                color: Color.fromARGB(255, 163, 23, 23)),
                            margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: const Icon(
                              Icons.delete,
                              color: Colors.white,
                            ),
                          )),
                InkWell(
                  onTap: () => ubah(context),
                  child: sedangLoading
                      ? const CircularProgressIndicator()
                      : Container(
                          width: 370,
                          height: 50,
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(7)),
                              color: Color.fromARGB(255, 12, 0, 119)),
                          margin: const EdgeInsets.fromLTRB(0, 10, 20, 10),
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
          ],
        ),
      ),
    );
  }
}
