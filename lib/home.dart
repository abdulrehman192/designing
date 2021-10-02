
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home App'),
        backgroundColor: Colors.lime,
      ),
      body: Container(
        color: Colors.blueGrey,
        child: Center(
          child: Text('Hello World',style: TextStyle(color: Colors.white, fontSize: 22),),
        ),
      ),
    );
  }
}
