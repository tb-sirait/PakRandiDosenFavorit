import 'package:flutter/material.dart';

class KontenBerita1 extends StatelessWidget {
  const KontenBerita1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            // Navigate back to the previous screen.
            Navigator.pop(context);
          },
        ),
        title: Text(
          "WNA asal Korea Kesulitan Membuat Dokumen Kependudukan",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_outlined,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/berita.png',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 16),
              Text(
                "Kementerian Dalam Negeri (Kemendagri) menanggapi isu ramainya KTP elektronik untuk warga negara asing (WNA). Belakangan warganet di media sosial diramaikan dengan isu adanya KTP elektronik untuk WNA yang dikaitkan dengan Pemilu 2024. Dirjen Dukcapil Kemendagri menjelaskan bahwa WNA bisa memiliki KTP elektronik. Meski demikian, ia menegaskan bahwa WNA tidak memiliki hak pilih. \"Hak-hak WNA jelas berbeda dengan WNI. WNA tidak punya hak pilih sedangkan WNI punya hak pilih,\" ujar Zudan, melalui keterangan resmi kepada Kompas.com, Rabu (1/6/2022). Selain tidak boleh memilih, Zudan menegaskan bahwa WNA juga tidak boleh dipilih dalam pemilihan umum. Hal ini menurutnya sesuai dengan Pasal 198 ayat (1) UU Nomor 7 Tahun 2017 tentang Pemilu yang menegaskan bahwa hak memilih hanya dimiliki oleh WNI. \"Inilah bentuk lain dari limitasi hak bagi orang asing,\" ungkapnya.",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}