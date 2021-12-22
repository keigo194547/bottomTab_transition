import 'package:flutter/material.dart';
import 'package:flutter_bottomtab_transition/bottom_first.dart';
import 'package:flutter_bottomtab_transition/bottom_second.dart';
import 'package:flutter_bottomtab_transition/bottom_third.dart';


class BottomTabPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomTabPageState();
  }
}

class _BottomTabPageState extends State<BottomTabPage> {

  int _currentIndex = 0;
  // ページの種類
  final _pageWidgets = <Widget>[
    BottomFirst(),
    BottomSecond(),
    BottomThird()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageWidgets.elementAt(_currentIndex),

      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.add_comment_sharp),
            title: Text('1')
          ),
          BottomNavigationBarItem(icon: Icon(Icons.add_location_alt_sharp),
              title: Text('2')
          ),
          BottomNavigationBarItem(icon: Icon(Icons.help),
              title: Text('3')
          ),
        ],

        currentIndex: _currentIndex,
        fixedColor: Colors.blueAccent,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  void _onItemTapped(int index) => setState(() => _currentIndex = index );
}