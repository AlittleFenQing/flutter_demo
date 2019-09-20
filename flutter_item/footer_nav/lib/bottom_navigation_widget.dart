import 'package:flutter/material.dart';
import 'pages/home_screen.dart';
import 'pages/page_screen.dart';
import 'pages/email_screen.dart';
import 'pages/airplay_screen.dart';

class BottomNavigationWidget extends StatefulWidget {
  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final bottomNavigationColor = Colors.blue;
  int _currentIndex = 0;
  List<Widget> listNav = List();
  @override
  // 初始化数据
  void initState(){
    listNav
      ..add(HomeScreen())
      ..add(EmailScreen())
      ..add(PageScreen())
      ..add(AirPlayScreen());
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: listNav[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: bottomNavigationColor,
            ),
            title: Text(
              'Home',
              style: TextStyle(color: bottomNavigationColor),
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.email,
              color: bottomNavigationColor,
            ),
            title: Text(
              'Email',
              style: TextStyle(color: bottomNavigationColor),
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.pages,
              color: bottomNavigationColor,
            ),
            title: Text(
              'Pages',
              style: TextStyle(color: bottomNavigationColor),
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.airplay,
              color: bottomNavigationColor,
            ),
            title: Text(
              'AirpPlay',
              style: TextStyle(color: bottomNavigationColor),
            )
          )
        ],
        currentIndex: _currentIndex,
        onTap: (int index){
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}