import 'package:flutter/material.dart';
import 'package:flutter_application_1/page/HomePage.dart';
import 'package:google_fonts/google_fonts.dart';

class SideBarMenu extends StatefulWidget {
  const SideBarMenu({super.key});

  @override
  State<SideBarMenu> createState() => _SideBarMenuState();
}

class _SideBarMenuState extends State<SideBarMenu> {
  Widget _selectedPage = const PageHome();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showWelcomeDialog(); // Tampilkan dialog sambutan setelah frame pertama
    });
  }

  void _showWelcomeDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Selamat Datang!'),
        content: const Text('Selamat datang di aplikasi e-materi!'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Tutup dialog
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  void _onSelectPage(Widget page) {
    setState(() {
      _selectedPage = page;
    });
    Navigator.pop(context); // Tutup drawer setelah memilih
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'E-Materi',
          style:
              GoogleFonts.montserrat(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Menu',
                    style: GoogleFonts.montserrat(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Aplikasi ini menyediakan materi Mobile & Web Service',
                    style: GoogleFonts.montserrat(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  )
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home_rounded),
              title: Text(
                'Home',
                style: GoogleFonts.montserrat(
                    fontSize: 16, fontWeight: FontWeight.w600),
              ),
              onTap: () {
                _onSelectPage(const PageHome());
              },
            ),
            ExpansionTile(
              leading: const Icon(Icons.book_rounded),
              title: Text(
                'Materi',
                style: GoogleFonts.montserrat(
                    fontSize: 16, fontWeight: FontWeight.w600),
              ),
              children: [
                ListTile(
                  title: Text(
                    'Materi 2',
                    style: GoogleFonts.montserrat(
                        fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/materi2');
                  },
                ),
                ListTile(
                  title: Text(
                    'Materi 3',
                    style: GoogleFonts.montserrat(
                        fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/materi3');
                  },
                ),
                ListTile(
                  title: Text(
                    'Materi 4',
                    style: GoogleFonts.montserrat(
                        fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/materi4');
                  },
                ),
                ListTile(
                  title: Text(
                    'Materi 5',
                    style: GoogleFonts.montserrat(
                        fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/materi5');
                  },
                ),
              ],
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: Text(
                'Setting',
                style: GoogleFonts.montserrat(
                    fontSize: 16, fontWeight: FontWeight.w600),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/seting');
              },
            )
          ],
        ),
      ),
      body: _selectedPage,
    );
  }
}
