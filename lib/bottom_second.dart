import 'package:flutter/material.dart';

class BottomSecond extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediahight = MediaQuery.of(context).size.height;
    final mediawidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("下タブバー2"),
      ),

      body: Container(
        child: Container(

          width: mediawidth,
          height: mediahight,

          child: Text('画面遷移しました'),
          color: Colors.blueAccent,
        ),
      ),
    );

  }
}