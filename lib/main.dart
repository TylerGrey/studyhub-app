import 'package:flutter/material.dart';
import 'package:studyhub/screens/Hub/hub.dart';
import 'package:studyhub/screens/account/account.dart';
import 'package:studyhub/screens/discovery/discovery_screen.dart';
import 'package:studyhub/screens/notice/notification.dart';
import 'package:studyhub/screens/recommend/recommend.dart';

void main() => runApp(StudyHubApp());

class StudyHubApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  Widget child;
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    if (index == 2) {
      Navigator.push(context, MaterialPageRoute(builder: (_) {
        return Hub();
      }));

      return;
    }

    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    switch (_selectedIndex) {
      case 0:
        child = Discovery();
        break;
      case 1:
        child = Recommend();
        break;
      case 3:
        child = Notice();
        break;
      case 4:
        child = Account();
    }
    return Scaffold(
      body: SafeArea(child: child),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('탐색하기'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_border),
            title: Text('스터디'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            title: Text('허브'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.textsms),
            title: Text('메세지'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            title: Text('프로필'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
