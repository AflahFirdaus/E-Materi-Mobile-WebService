import 'package:flutter/material.dart';

class RowPage extends StatefulWidget {
  const RowPage({super.key});

  @override
  State<RowPage> createState() => _RowPageState();
} 

class _RowPageState extends State<RowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Row',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
          child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 50,
              height: 50,
              color: Colors.indigo,
            ),
            const SizedBox(
              width: 16,
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.blue,
            ),
            const SizedBox(
              width: 16,
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.green,
            ),
          ],
        ),
      )),
    );
  }
}

class ColumnPage extends StatefulWidget {
  const ColumnPage({super.key});

  @override
  State<ColumnPage> createState() => _ColumnPageState();
}

class _ColumnPageState extends State<ColumnPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Column',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 50,
              height: 50,
              color: Colors.indigo,
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.blue,
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.green,
            ),
          ],
        ),
      )),
    );
  }
}

class ColumnRowPage extends StatefulWidget {
  const ColumnRowPage({super.key});

  @override
  State<ColumnRowPage> createState() => _ColumnRowPageState();
}

class _ColumnRowPageState extends State<ColumnRowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Column & Row',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.indigo,
                ),
                const SizedBox(
                  width: 16,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.green,
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.orange,
            )
          ],
        ),
      )),
    );
  }
}
