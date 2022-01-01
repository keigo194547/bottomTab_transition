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
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_comment_sharp,
                color: hogeColor[NavigationState.firstPage],
              ),
              label: hogeString[NavigationState.firstPage]
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_location_alt_sharp,
                color: hogeColor[NavigationState.secondPage],
              ),
              label: hogeString[NavigationState.secondPage]
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.help,
                color: hogeColor[NavigationState.thirdPage],
              ),
              label: hogeString[NavigationState.thirdPage]
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

// ここから下は特に意味はない。マジックナンバーを用いたくなかっただけ
enum NavigationState{
  firstPage,
  secondPage,
  thirdPage
}

Map<NavigationState, Color> hogeColor = {
  NavigationState.firstPage: Colors.red,
  NavigationState.secondPage: Colors.blue,
  NavigationState.thirdPage: Colors.yellow
};

Map<NavigationState, String> hogeString = {
  NavigationState.firstPage: '1画面',
  NavigationState.secondPage: '2画面',
  NavigationState.thirdPage: '3画面'
};