import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MateriDuaPage extends StatefulWidget {
  const MateriDuaPage({super.key});

  @override
  State<MateriDuaPage> createState() => _MateriDuaPageState();
}

class _MateriDuaPageState extends State<MateriDuaPage> {
  final List<Map<String, String>> listMateri = [
    {'name': 'Center', 'route': '/center'},
    {'name': 'SizedBox', 'route': '/sizedBox'},
    {'name': 'Text', 'route': '/text'},
    {'name': 'Expanded', 'route': '/expanded'},
    {'name': 'Container', 'route': '/container'},
    {'name': 'Row', 'route': '/row'},
    {'name': 'Column', 'route': '/column'},
    {'name': 'Column & Row', 'route': '/column_Row'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Materi 2',
          style:
              GoogleFonts.montserrat(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
        child: GridView.builder(
          itemCount: listMateri.length,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(16),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 12, crossAxisSpacing: 12),
          itemBuilder: (context, index) {
            final materi = listMateri[index];
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  materi['route']!,
                  arguments: materi['name'],
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    materi['name']!,
                    style: GoogleFonts.montserrat(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class MateriTigaPage extends StatefulWidget {
  const MateriTigaPage({super.key});

  @override
  State<MateriTigaPage> createState() => _MateriTigaPageState();
}

class _MateriTigaPageState extends State<MateriTigaPage> {
  final List<Map<String, String>> listMateri = [
    {'name': 'Stack', 'route': '/stack'},
    {'name': 'Padding', 'route': '/padding'},
    {'name': 'Align', 'route': '/align'},
    {'name': 'ElevatedButton', 'route': '/elevatedButton'},
    {'name': 'TextField', 'route': '/textField'},
    {'name': 'ImageInternet', 'route': '/imageInternet'},
    {'name': 'ImageLocal', 'route': '/imageLocal'},
    {'name': 'PenerapanContainer', 'route': '/penerapanContainer'},
    {'name': 'Icon', 'route': '/icon'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Materi 3',
          style:
              GoogleFonts.montserrat(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
        child: GridView.builder(
          itemCount: listMateri.length,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(16),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 12, crossAxisSpacing: 12),
          itemBuilder: (context, index) {
            final materi = listMateri[index];
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  materi['route']!,
                  arguments: materi['name'],
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    materi['name']!,
                    style: GoogleFonts.montserrat(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class MateriEmpatPage extends StatefulWidget {
  const MateriEmpatPage({super.key});

  @override
  State<MateriEmpatPage> createState() => _MateriEmpatPageState();
}

class _MateriEmpatPageState extends State<MateriEmpatPage> {
  final List<Map<String, String>> listMateri = [
    {'name': 'ListViewBuilder', 'route': '/listViewBuilder'},
    {'name': 'ListViewSparated', 'route': '/listViewSparated'},
    {'name': 'ListViewCustom', 'route': '/listViewCustom'},
    {'name': 'ListView', 'route': '/listView'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Materi 4',
          style:
              GoogleFonts.montserrat(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
        child: GridView.builder(
          itemCount: listMateri.length,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(16),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 12, crossAxisSpacing: 12),
          itemBuilder: (context, index) {
            final materi = listMateri[index];
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  materi['route']!,
                  arguments: materi['name'],
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    materi['name']!,
                    style: GoogleFonts.montserrat(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class MateriLimaPage extends StatefulWidget {
  const MateriLimaPage({super.key});

  @override
  State<MateriLimaPage> createState() => _MateriLimaPageState();
}

class _MateriLimaPageState extends State<MateriLimaPage> {
  final List<Map<String, String>> listMateri = [
    {'name': 'GridViewCount', 'route': '/gridViewCount'},
    {'name': 'GridViewextent', 'route': '/gridViewExtent'},
    {'name': 'GridViewBuilder', 'route': '/gridViewBuilder'},
    {'name': 'GridViewCustom', 'route': '/gridViewCustom'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Materi 4',
          style:
              GoogleFonts.montserrat(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
        child: GridView.builder(
          itemCount: listMateri.length,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(16),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 12, crossAxisSpacing: 12),
          itemBuilder: (context, index) {
            final materi = listMateri[index];
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  materi['route']!,
                  arguments: materi['name'],
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    materi['name']!,
                    style: GoogleFonts.montserrat(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
