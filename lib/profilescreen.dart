

import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile',style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            print('Leading button press');
          },
          icon: Icon(Icons.arrow_back, color: Colors.black,),

        ),
        actions: <Widget>[
          IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz,color: Colors.grey,))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 30,),
            CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 50,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/user-1.jpg'),
                radius: 47,
              ),
            ),
            SizedBox(height: 30,),
            Text('Abdul Rehman',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26),),
            Text('Keep smile, Keep alive',style: TextStyle(fontSize: 15,color: Colors.grey),),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text('438',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Posts',style: TextStyle(fontSize: 15,color: Colors.grey),),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text('298',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Following',style: TextStyle(fontSize: 15,color: Colors.grey),),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text('321K',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Followers',style: TextStyle(fontSize: 15,color: Colors.grey),),
                    ),
                  ],
                ),
              ],
            ),

            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: 150,
                  height: 40,
                  child: ElevatedButton(
                      onPressed: (){},
                      child: Text('Follow')
                  ),
                ),
                Container(
                  width: 150,
                  height: 40,
                  child: OutlinedButton(
                      onPressed: (){},
                      child: Text('Message')
                  ),
                )
              ],
            )


          ],
        ),
      ),
    );
  }
}
