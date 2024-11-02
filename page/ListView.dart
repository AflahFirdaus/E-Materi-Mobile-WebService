import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListViewBuilderPage extends StatefulWidget {
  const ListViewBuilderPage({super.key});

  @override
  State<ListViewBuilderPage> createState() => _ListViewBuilderPageState();
}

class _ListViewBuilderPageState extends State<ListViewBuilderPage> {
  List<String> listData = List<String>.generate(100, (index) => 'Data $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ListView Builder',
          style:
              GoogleFonts.montserrat(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
          child: ListView.builder(
              itemCount: listData.length,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) => ListTile(
                    dense: true,
                    title: Text(
                      listData[index],
                      style: GoogleFonts.montserrat(fontSize: 16),
                    ),
                  ))),
    );
  }
}

class ListViewSparatedPage extends StatefulWidget {
  const ListViewSparatedPage({super.key});

  @override
  State<ListViewSparatedPage> createState() => _ListViewSparatedPageState();
}

class _ListViewSparatedPageState extends State<ListViewSparatedPage> {
  List<String> listData = List<String>.generate(100, (index) => 'Data $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ListView Separated',
          style:
              GoogleFonts.montserrat(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
        child: ListView.separated(
          itemCount: listData.length,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) => ListTile(
            dense: true,
            title: Text(
              listData[index],
              style: GoogleFonts.montserrat(fontSize: 16),
            ),
          ),
          separatorBuilder: (context, index) => const Divider(
            height: 0,
          ),
        ),
      ),
    );
  }
}

class ListViewCustomPage extends StatefulWidget {
  const ListViewCustomPage({super.key});

  @override
  State<ListViewCustomPage> createState() => _ListViewCustomPageState();
}

class _ListViewCustomPageState extends State<ListViewCustomPage> {
  List<String> listData = List<String>.generate(100, (index) => 'Data $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ListView Custom',
          style:
              GoogleFonts.montserrat(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
        child: ListView.custom(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.zero,
          childrenDelegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(
                    dense: true,
                    title: Text(
                      listData[index],
                      style: GoogleFonts.montserrat(fontSize: 16),
                    ),
                  ),
              childCount: listData.length),
        ),
      ),
    );
  }
}

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  bool switchEnable = true;

  void onChangeSwitch({required bool value}) {
    setState(() {
      switchEnable = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ListView',
          style:
              GoogleFonts.montserrat(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              leading: const Icon(
                Icons.airplanemode_active_rounded,
              ),
              title: Text(
                'Airplane Mode',
                style: GoogleFonts.montserrat(fontSize: 16),
              ),
              trailing: Transform.translate(
                offset: const Offset(10, 0),
                child: Switch(
                  value: switchEnable,
                  onChanged: (value) => onChangeSwitch(value: value),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.wifi_rounded,
              ),
              title: Text(
                'Wi_Fi',
                style: GoogleFonts.montserrat(
                  fontSize: 16,
                ),
              ),
              trailing: const Icon(
                Icons.chevron_right_rounded,
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.bluetooth_rounded,
              ),
              title: Text(
                'Bluetooth',
                style: GoogleFonts.montserrat(
                  fontSize: 16,
                ),
              ),
              trailing: const Icon(
                Icons.chevron_right_rounded,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
