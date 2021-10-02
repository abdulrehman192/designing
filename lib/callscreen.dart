

import 'package:flutter/material.dart';

class Call extends StatelessWidget {
  const Call({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 50,),
            Container(
              margin: EdgeInsets.symmetric(vertical: 30),
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(50)
              ),
              child: Icon(Icons.person, size: 60, color: Colors.white,),
            ),
            Text('03089098067',style: TextStyle(fontSize: 26, color: Colors.black),),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text('00:00',style: TextStyle(color: Colors.black,fontSize: 16),),
            ),
            SizedBox(height: 80,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    IconButton(onPressed: (){},
                        icon: Icon(Icons.mic_off,size: 34,)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Mute'),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    IconButton(onPressed: (){},
                        icon: Icon(Icons.dialpad,size: 34,)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Mute'),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    IconButton(onPressed: (){},
                        icon: Icon(Icons.volume_up_rounded,size: 34,)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Mute'),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    IconButton(onPressed: (){},
                        icon: Icon(Icons.add_call,size: 34,)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Add Call'),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    IconButton(onPressed: (){},
                        icon: Icon(Icons.pause,size: 34,)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Hold'),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    IconButton(onPressed: (){},
                        icon: Icon(Icons.record_voice_over,size: 34,)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Record'),
                    )
                  ],
                ),

              ],
            ),
            SizedBox(height: 100,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.red
              ),
              child: IconButton(onPressed: (){
                print('Call Button Press');
              },
                  color: Colors.white,
                  icon: Icon(Icons.call ,)),
            )

          ],
        ),
      ),
    );
  }
}
