import 'package:flutter/material.dart';
import 'keep_alive_demo.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: KeepAliveDemo(),
    );
  }
}

class KeepAliveDemo extends StatefulWidget {
  @override
  _KeepAliveDemoState createState() => _KeepAliveDemoState();
}

class _KeepAliveDemoState extends State<KeepAliveDemo> with SingleTickerProviderStateMixin {
  TabController _controller;

  @override

  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }
  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Keep_alive_Demo'),
        bottom: TabBar(
          controller: _controller,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.directions_car)),
            Tab(icon: Icon(Icons.directions_transit)),
            Tab(icon: Icon(Icons.directions_bike))
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: <Widget>[
          MyHomePage(),
          MyHomePage(),
          MyHomePage()
        ],
      ),
    );
  }
}