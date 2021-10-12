
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  const Stories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stories'),
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/images/user-1.jpg'),
          radius: 15,
        ),
        actions: <Widget>[
          IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt)),
          IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
        ],
      ),
      body: Center(
        child: Expanded(
          child: ListView.builder(
              itemCount: 20,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index)
              {
                return story(imageUrl: 'assets/images/user-1.jpg',username: 'username');
              }
          ),

        )
      )
    );
  }

  Widget story({String? imageUrl, String? username})
  {
    return Container(
      width: 100,
      height: 110,
      color: Colors.transparent,
      child: Column(
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.orange,
            radius: 40,
            child: CircleAvatar(
              radius: 37,
              backgroundColor: Colors.black,
              child: CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage('$imageUrl'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text('$username',style: TextStyle(fontWeight: FontWeight.bold),),
          )
        ],
      ),
    );
  }
}
