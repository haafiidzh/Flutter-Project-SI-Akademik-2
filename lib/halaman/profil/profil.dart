import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Profil extends StatefulWidget {
  ProfilState createState() => ProfilState();
}

class ProfilState extends State<Profil> {
  bool _satu = false;
  bool _dua = false;
  bool _tiga = false;

  Widget _buildDetail(int index, String text) {
    return AnimatedContainer(
      // margin: const EdgeInsets.only(left: 40, right: 40),
      duration: const Duration(milliseconds: 200),
      color: const Color.fromARGB(255, 214, 214, 214),
      height: index == 1
          ? (_satu ? 615 : 0)
          : (index == 2 ? (_dua ? 2300 : 0) : (_tiga ? 1950 : 0)),
      child: Container(
          width: double.infinity,
          child: index == 1
              ? Column(
                  children: [
                    Container(
                        margin: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Kampus 1',
                              style: GoogleFonts.mavenPro(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Fakultas Ilmu Komputer',
                              style: GoogleFonts.mavenPro(
                                fontSize: 15,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                // ignore: deprecated_member_use
                                launch(
                                    'https://maps.app.goo.gl/8ZQn2MqL2G3rgiCn8');
                              },
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                                padding:
                                    const EdgeInsets.fromLTRB(0, 10, 0, 10),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.3),
                                        spreadRadius: 1,
                                        blurRadius: 3,
                                        offset: const Offset(0, 2),
                                      )
                                    ]),
                                child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(left: 40),
                                      width: double.infinity,
                                      child: Text(
                                        'Jl. Bhayangkara No.55, Tipes, Kec. Serengan, Kota Surakarta, Jawa Tengah 57154',
                                        style: GoogleFonts.mavenPro(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 40,
                                      width: 40,
                                      child: Icon(Icons.location_on),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )),
                    Container(
                        margin: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                        // height: 200,
                        width: double.infinity,
                        // color: Colors.amberAccent,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Kampus 2',
                              style: GoogleFonts.mavenPro(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Fakultas Ilmu Kesehatan',
                              style: GoogleFonts.mavenPro(
                                fontSize: 15,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                // ignore: deprecated_member_use
                                launch(
                                    'https://maps.app.goo.gl/SVrkhwg9ucpWeXmm6');
                              },
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                                padding:
                                    const EdgeInsets.fromLTRB(0, 10, 0, 10),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.3),
                                        spreadRadius: 1,
                                        blurRadius: 3,
                                        offset: const Offset(0, 2),
                                      )
                                    ]),
                                child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 40, right: 10),
                                      width: double.infinity,
                                      child: Text(
                                        'Jl. K.H Samanhudi No.93, Sondakan, Kec. Laweyan, Kota Surakarta, Jawa Tengah 57147',
                                        style: GoogleFonts.mavenPro(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 40,
                                      width: 40,
                                      child: Icon(Icons.location_on),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )),
                    Container(
                        margin: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Kampus 3',
                              style: GoogleFonts.mavenPro(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Fakultas Hukum dan Bisnis',
                              style: GoogleFonts.mavenPro(
                                fontSize: 15,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                // ignore: deprecated_member_use
                                launch(
                                    'https://maps.app.goo.gl/RKLUiGTVcZXgAxFF6');
                              },
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                                padding:
                                    const EdgeInsets.fromLTRB(0, 10, 0, 10),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.3),
                                        spreadRadius: 1,
                                        blurRadius: 3,
                                        offset: const Offset(0, 2),
                                      )
                                    ]),
                                child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(left: 40),
                                      width: double.infinity,
                                      child: Text(
                                        'Jl. Pinang, Jati, Cemani, Kec. Grogol, Kabupaten Sukoharjo, Jawa Tengah 57552',
                                        style: GoogleFonts.mavenPro(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 40,
                                      width: 40,
                                      child: Icon(Icons.location_on),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ))
                  ],
                )
              : index == 2
                  ? Column(
                      children: [
                        Container(
                            margin: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Fakultas Ilmu Komputer',
                                  style: GoogleFonts.mavenPro(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(0, 15, 0, 15),
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 10, 0, 10),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.3),
                                          spreadRadius: 1,
                                          blurRadius: 3,
                                          offset: const Offset(0, 2),
                                        )
                                      ]),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        width: double.infinity,
                                        child: Text(
                                          'S1 Sistem Informasi',
                                          style: GoogleFonts.mavenPro(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 9,
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        width: double.infinity,
                                        height: 2,
                                        decoration: BoxDecoration(
                                            color: Colors.black45),
                                      ),
                                      const SizedBox(
                                        height: 9,
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        width: double.infinity,
                                        child: Text(
                                          'S1 Teknik Informatika',
                                          style: GoogleFonts.mavenPro(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 9,
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        width: double.infinity,
                                        height: 2,
                                        decoration: BoxDecoration(
                                            color: Colors.black45),
                                      ),
                                      const SizedBox(
                                        height: 9,
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        width: double.infinity,
                                        child: Text(
                                          'D4 Teknologi Rekayasa Perangkat Lunak',
                                          style: GoogleFonts.mavenPro(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 9,
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        width: double.infinity,
                                        height: 2,
                                        decoration: BoxDecoration(
                                            color: Colors.black45),
                                      ),
                                      const SizedBox(
                                        height: 9,
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        width: double.infinity,
                                        child: Text(
                                          'D3 Teknik Komputer',
                                          style: GoogleFonts.mavenPro(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )),
                        Container(
                            margin: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Fakultas Ilmu Kesehatan',
                                  style: GoogleFonts.mavenPro(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(0, 15, 0, 15),
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 10, 0, 10),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.3),
                                          spreadRadius: 1,
                                          blurRadius: 3,
                                          offset: const Offset(0, 2),
                                        )
                                      ]),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        width: double.infinity,
                                        child: Text(
                                          'S1 Farmasi',
                                          style: GoogleFonts.mavenPro(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 9,
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        width: double.infinity,
                                        height: 2,
                                        decoration: BoxDecoration(
                                            color: Colors.black45),
                                      ),
                                      const SizedBox(
                                        height: 9,
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        width: double.infinity,
                                        child: Text(
                                          'S1 Keperawatan',
                                          style: GoogleFonts.mavenPro(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 9,
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        width: double.infinity,
                                        height: 2,
                                        decoration: BoxDecoration(
                                            color: Colors.black45),
                                      ),
                                      const SizedBox(
                                        height: 9,
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        width: double.infinity,
                                        child: Text(
                                          'S1 Administrasi Rumah Sakit',
                                          style: GoogleFonts.mavenPro(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 9,
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        width: double.infinity,
                                        height: 2,
                                        decoration: BoxDecoration(
                                            color: Colors.black45),
                                      ),
                                      const SizedBox(
                                        height: 9,
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        width: double.infinity,
                                        child: Text(
                                          'D3 Rekam Medis dan Informasi Kesehatan',
                                          style: GoogleFonts.mavenPro(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 9,
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        width: double.infinity,
                                        height: 2,
                                        decoration: BoxDecoration(
                                            color: Colors.black45),
                                      ),
                                      const SizedBox(
                                        height: 9,
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        width: double.infinity,
                                        child: Text(
                                          'D3 Kebidanan',
                                          style: GoogleFonts.mavenPro(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 9,
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        width: double.infinity,
                                        height: 2,
                                        decoration: BoxDecoration(
                                            color: Colors.black45),
                                      ),
                                      const SizedBox(
                                        height: 9,
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        width: double.infinity,
                                        child: Text(
                                          'D3 Keperawatan',
                                          style: GoogleFonts.mavenPro(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 9,
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        width: double.infinity,
                                        height: 2,
                                        decoration: BoxDecoration(
                                            color: Colors.black45),
                                      ),
                                      const SizedBox(
                                        height: 9,
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        width: double.infinity,
                                        child: Text(
                                          'Profesi NERS',
                                          style: GoogleFonts.mavenPro(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )),
                        Container(
                            margin: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Fakultas Sains & Teknologi',
                                  style: GoogleFonts.mavenPro(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(0, 15, 0, 15),
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 10, 0, 10),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.3),
                                          spreadRadius: 1,
                                          blurRadius: 3,
                                          offset: const Offset(0, 2),
                                        )
                                      ]),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        width: double.infinity,
                                        child: Text(
                                          'S1 Teknik Industri',
                                          style: GoogleFonts.mavenPro(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 9,
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        width: double.infinity,
                                        height: 2,
                                        decoration: BoxDecoration(
                                            color: Colors.black45),
                                      ),
                                      const SizedBox(
                                        height: 9,
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        width: double.infinity,
                                        child: Text(
                                          'S1 Agribisnis',
                                          style: GoogleFonts.mavenPro(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )),
                        Container(
                            margin: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Fakultas Hukum & Bisnis',
                                  style: GoogleFonts.mavenPro(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(0, 15, 0, 15),
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 10, 0, 10),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.3),
                                          spreadRadius: 1,
                                          blurRadius: 3,
                                          offset: const Offset(0, 2),
                                        )
                                      ]),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        width: double.infinity,
                                        child: Text(
                                          'S1 Manajemen',
                                          style: GoogleFonts.mavenPro(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 9,
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        width: double.infinity,
                                        height: 2,
                                        decoration: BoxDecoration(
                                            color: Colors.black45),
                                      ),
                                      const SizedBox(
                                        height: 9,
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        width: double.infinity,
                                        child: Text(
                                          'S1 Hukum',
                                          style: GoogleFonts.mavenPro(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 9,
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        width: double.infinity,
                                        height: 2,
                                        decoration: BoxDecoration(
                                            color: Colors.black45),
                                      ),
                                      const SizedBox(
                                        height: 9,
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        width: double.infinity,
                                        child: Text(
                                          'S1 Komunikasi Bahasa Inggris & Bisnis Internasional',
                                          style: GoogleFonts.mavenPro(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 9,
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        width: double.infinity,
                                        height: 2,
                                        decoration: BoxDecoration(
                                            color: Colors.black45),
                                      ),
                                      const SizedBox(
                                        height: 9,
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        width: double.infinity,
                                        child: Text(
                                          'S1 Akuntansi',
                                          style: GoogleFonts.mavenPro(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ],
                    )
                  : Padding(
                      padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                      child: Column(
                        children: [
                          const Image(
                            image: AssetImage('assets/gedung-fikom.jpg'),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Sejarah Universitas Duta Bangsa Surakarta tidak terlepas berdirinya Lembaga Kursus dan Pelatihan (LKP) Aksmi Kusuma Bangsa yang berdiri pada tahun 1995 yang didirikan oleh Bapak Drs. Singgih Purnomo melalui Yayasan Kusuma Bangsa Adi Prakarsa, lembaga ini pada awalnya adalah sebuah lembaga pendidikan yang menyiapkan tenaga terampil dalam berbagai bidang dengan durasi selama 1 tahun (setara D1).  Pada saat itu animo untuk masuk program pendidikan satu tahun sangatlah besar, karena ketrampilan yang ditawarkan sangat dibutuhkan di dunia kerja serta biaya pendidikan yang terjangkau. Dengan keberhasilan ini maka pada tahun 1997 didirikan LKP Citra Medika yang membuka pendidikan satu tahun di bidang kesehatan yang juga cukup diminati oleh masyarakat.',
                            style: GoogleFonts.mavenPro(fontSize: 12),
                            textAlign: TextAlign.justify,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Image(
                            image: AssetImage('assets/gedung-fikes.jpg'),
                          ),
                          // Image.asset('sejarah/gedung-fikes.jpg'),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Seiring dengan meningkatnya kesejahteraan masyarakat, maka tuntutan untuk mengikuti pendidikan yang lebih tinggi juga semakin meningkat, oleh sebab itu  melalui Yayasan  Internusa disiapkan proposal pendirian perguruan tinggi pada tahun 2001 yaitu usulan Akademi  Perekam Medik dan Informatika Kesehatan  (APIKES) Citra Medika  yang ijinnya disetujui oleh Departemen Pendidikan Nasional Berdasarkan SK Menteri Pendidikan Nasional No : SK No : 276/D/O/2002  dengan Program Studi D-3 Rekam Medis dan Informatika Kesehatan.',
                            style: GoogleFonts.mavenPro(fontSize: 12),
                            textAlign: TextAlign.justify,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Image(
                            image: AssetImage('assets/gedung-cemani.jpg'),
                          ),
                          // Image.asset('sejarah/gedung-cemani.jpg'),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Melihat peluang tingginya animo untuk mengikuti pendidikan di bidang komputer yang sangat tingi, maka melalui Yayasan Kusuma Bangsa Adi Prakarsa mengusulkan Sekolah Tinggi Komputer, maka pada tahun 2004 berdiri Sekolah Tinggi Manajemen Informatika dan Komputer (STMIK) Duta Bangsa yang ijinnya disetujui oleh Departemen Pendidikan Nasional berdasarkan SK Menteri Pendidikan Nasional No : SK No : 24/D/O/2004  dengan Program Studi  S-1 Sistem Informasi dan D3 Manajemen Informatika, sedangkan Program Studi S-1 Teknik Informatika dan D3 Teknik Komputer berdiri pada tahun 2007.',
                            style: GoogleFonts.mavenPro(fontSize: 12),
                            textAlign: TextAlign.justify,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Dalam rangka pengembangan pelayanan pendididikan kesehatan maka pada tahun 2007  melalui Yayasan Internusa didirikan Akademi Kebidanan Citra Medika dengan Menteri Pendidikan Nasional No : SK No : 174/D/O/2007  Keinginan untuk mengembangkan perguruan tinggi yang berkualitas selalu menjadi cita-cita pengurus yayasan, maka pada tahun 2012 diusulkan perubahan bentuk menjadi Sekolah Tinggi Kesehatan ( STIKES ) namun dengan segala daya upaya yang telah dilakukan , usulan ini ditolak oleh  Dirjen Pendidikan Tinggi. ',
                            style: GoogleFonts.mavenPro(fontSize: 12),
                            textAlign: TextAlign.justify,
                          ),
                          Text(
                            'Berdasarkan hasil rapat  pengurus Yayasan  Kusuma Bangsa Adi Prakarsa, Yayasan Internusa dan rapat senat akademik STMIK Duta Bangsa, Apikes Citra Medika dan Akademi Kebidanan Citra Medika kembali diusulkan penggabungan ketiga institusi ini menjadi Universitas pada tahun 2016 dan pada tanggal 29 Agustus 2018 oleh Kementrian Riset, Teknologi dan Pendidikan Tinggi telah disetujui pendirian  Universitas Duta Bangsa  Surakarta dengan SK No : 729/KPT/I/2018.',
                            style: GoogleFonts.mavenPro(fontSize: 12),
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    )),
    );
  }

  void _toggleDetailVisibility(int index) {
    setState(() {
      if (index == 1) {
        _satu = !_satu;
        if (_dua) _dua = false;
        if (_tiga) _tiga = false;
      } else if (index == 2) {
        _dua = !_dua;
        if (_satu) _satu = false;
        if (_tiga) _tiga = false;
      } else if (index == 3) {
        _tiga = !_tiga;
        if (_satu) _satu = false;
        if (_dua) _dua = false;
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 75,
          backgroundColor: const Color.fromARGB(255, 12, 0, 119),
          elevation: 10,
          title: Text(
            'Profil',
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: const Color.fromARGB(255, 214, 214, 214),
                height: 2810,
                child: Column(
                  children: <Widget>[
                    Column(
                      children: [
                        const SizedBox(
                          height: 25,
                        ),
                        Container(
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 214, 214, 214),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(140))),
                          height: 140,
                          width: 140,
                          child: const Image(
                            image: AssetImage('assets/main/logo_udb.png'),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Universitas Duta Bangsa',
                          style: GoogleFonts.mavenPro(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Surakarta',
                          style: GoogleFonts.mavenPro(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          color: const Color.fromARGB(255, 214, 214, 214),
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () => _toggleDetailVisibility(1),
                                child: Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(40, 20, 40, 20),
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 214, 214, 214),
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(30),
                                          topRight: Radius.circular(30)),
                                      border: Border.all(
                                        style: BorderStyle.solid,
                                        color: const Color.fromARGB(
                                            255, 214, 214, 214),
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.3),
                                          spreadRadius: 1,
                                          blurRadius: 3,
                                          offset: const Offset(0, -3),
                                        )
                                      ]),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        'Alamat',
                                        style: GoogleFonts.mavenPro(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const Spacer(),
                                      Icon(
                                        _satu
                                            ? Icons.keyboard_arrow_up
                                            : Icons.keyboard_arrow_down,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              _buildDetail(1,
                                  'Detail Satu'), // Menampilkan "Detail Satu"

                              const SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                onTap: () => _toggleDetailVisibility(2),
                                child: Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(40, 20, 40, 20),
                                  // margin: const EdgeInsets.only(left: 40, right: 40),
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 214, 214, 214),
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(30),
                                          topRight: Radius.circular(30)),
                                      border: Border.all(
                                        style: BorderStyle.solid,
                                        color: const Color.fromARGB(
                                            255, 214, 214, 214),
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.3),
                                          spreadRadius: 1,
                                          blurRadius: 3,
                                          offset: const Offset(0, -3),
                                        )
                                      ]),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        'Fakultas dan Program Studi',
                                        style: GoogleFonts.mavenPro(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const Spacer(),
                                      Icon(
                                        _dua
                                            ? Icons.keyboard_arrow_up
                                            : Icons.keyboard_arrow_down,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              _buildDetail(
                                  2, 'Detail Dua'), // Menampilkan "Detail Dua"

                              const SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                onTap: () => _toggleDetailVisibility(3),
                                child: Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(40, 20, 40, 20),
                                  // margin: const EdgeInsets.only(left: 40, right: 40),
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 214, 214, 214),
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(30),
                                          topRight: Radius.circular(30)),
                                      border: Border.all(
                                        style: BorderStyle.solid,
                                        color: const Color.fromARGB(
                                            255, 214, 214, 214),
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.3),
                                          spreadRadius: 1,
                                          blurRadius: 3,
                                          offset: const Offset(0, -3),
                                        )
                                      ]),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        'Sejarah',
                                        style: GoogleFonts.mavenPro(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const Spacer(),
                                      Icon(
                                        _dua
                                            ? Icons.keyboard_arrow_up
                                            : Icons.keyboard_arrow_down,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              _buildDetail(3, 'Detail Dua'),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
