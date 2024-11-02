import 'package:flutter/material.dart';
import 'package:flutter_application_1/page/AlignPage.dart';
import 'package:flutter_application_1/page/ContainerPage.dart';
import 'package:flutter_application_1/page/ElevatedButton.dart';
import 'package:flutter_application_1/page/ExpandedPage.dart';
import 'package:flutter_application_1/page/GridView.dart';
import 'package:flutter_application_1/page/CenterPage.dart';
import 'package:flutter_application_1/page/IconPage.dart';
import 'package:flutter_application_1/page/ImagePage.dart';
import 'package:flutter_application_1/page/ListView.dart';
import 'package:flutter_application_1/page/MateriPage.dart';
import 'package:flutter_application_1/page/PaddingPage.dart';
import 'package:flutter_application_1/page/PenerapanContainer.dart';
import 'package:flutter_application_1/page/RowAndColumn.dart';
import 'package:flutter_application_1/page/SideBarMenu.dart';
import 'package:flutter_application_1/page/SizeBoxPage.dart';
import 'package:flutter_application_1/page/StackPage.dart';
import 'package:flutter_application_1/page/TextField.dart';
import 'package:flutter_application_1/page/TextPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SideBarMenu(),
        '/materi2': (context) => const MateriDuaPage(),
        '/materi3': (context) => const MateriTigaPage(),
        '/materi4': (context) => const MateriEmpatPage(),
        '/materi5': (context) => const MateriLimaPage(),
        '/center': (context) => const HomePage(),
        '/sizedBox': (context) => const SizedBoxPage(),
        '/text': (context) => const TextPage(),
        '/expanded': (context) => const ExpandedPage(),
        '/container': (context) => const ContainerPage(),
        '/row': (context) => const RowPage(),
        '/column': (context) => const ColumnPage(),
        '/column_Row': (context) => const ColumnRowPage(),
        '/stack': (context) => const StackPositionedPage(),
        '/padding': (context) => const PaddingPage(),
        '/align': (context) => const AlignPage(),
        '/elevatedButton': (context) => const ElevatedButtonPage(),
        '/textField': (context) => const TextFieldPage(),
        '/imageInternet': (context) => const ImageNetworkPage(),
        '/imageLocal': (context) => const ImageAsstsPage(),
        '/penerapanContainer': (context) => const PenerapanContainerPage(),
        '/icon': (context) => const IconPage(),
        '/listViewBuilder': (context) => const ListViewBuilderPage(),
        '/listViewSparated': (context) => const ListViewSparatedPage(),
        '/listViewCustom': (context) => const ListViewCustomPage(),
        '/listView': (context) => const ListViewPage(),
        '/gridViewCount': (context) => const GridViewCountPage(),
        '/gridViewExtent': (context) => const GridViewExtentPage(),
        '/gridViewBuilder': (context) => const GridViewBuilderPage(),
        '/gridViewCustom': (context) => const GridViewCustomPage(),
      },
    );
  }
}
