import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CenterContainer extends StatefulWidget {
  const CenterContainer({super.key});

  @override
  State<CenterContainer> createState() => _CenterContainerState();
}

class _CenterContainerState extends State<CenterContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Implementasi Center dan Container',
            style: GoogleFonts.montserrat(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            )),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Identitas Profil Mahasiswa',
                style: GoogleFonts.montserrat(
                    fontSize: 16, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                width: 250,
                height: 50,
                color: Colors.cyan[400],
                child: Center(
                  child: Text(
                    'NPM : 5220411220',
                    style: GoogleFonts.montserrat(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                width: 250,
                height: 50,
                color: Colors.orange[400],
                child: Center(
                  child: Text(
                    'Nama : Aflah Firdaus Fuady',
                    style: GoogleFonts.montserrat(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                width: 250,
                height: 50,
                color: Colors.pink[400],
                child: Center(
                  child: Text(
                    'Prodi : Informatika Sarjana',
                    style: GoogleFonts.montserrat(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
