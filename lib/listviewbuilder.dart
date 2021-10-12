
import 'package:flutter/material.dart';

class Lists extends StatelessWidget {
  const Lists({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View Builder'),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index)
            {
              return Container(
                width: MediaQuery.of(context).size.width,
                height: 80.0,
                margin: EdgeInsets.only(bottom: 1.0),
                color: Colors.red,
              );
            }

        ),
      ),
    );
  }
}
