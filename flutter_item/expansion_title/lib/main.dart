import 'package:flutter/material.dart';
import 'expansion_panel_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: ExpansionPanelListDemo(),
    );
  }
}