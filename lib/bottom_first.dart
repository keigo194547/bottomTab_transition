import 'package:flutter/material.dart';

class BottomFirst extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediahight = MediaQuery.of(context).size.height;
    final mediawidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("下タブバー1"),
      ),

      body: Container(
        child: Container(

          width: mediawidth,
          height: mediahight/2,

          child: Text('画面遷移しました'),
          color: Colors.redAccent,
        ),
      ),
    );

  }
}