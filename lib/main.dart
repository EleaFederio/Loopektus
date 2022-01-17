import 'dart:convert';

import 'package:esp2688/logix/LoopSwitcher.dart';
import 'package:esp2688/widgets/pedalLoop.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as rootBundle;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Guitar Loop Switcher v.1'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    ReadLoopSwitcher();

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container()

    );
  }

  void ReadLoopSwitcher() async {
    final jsonData = await rootBundle.rootBundle.loadString('json/loop_switcher.json');
    final list = json.decode(jsonData) ;
    print(list);
  }
}
