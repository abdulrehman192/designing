

import 'package:flutter/material.dart';

class Chat extends StatelessWidget {

  List<String> usernames = ['Ali','Ahmad','Hassan','Zain','Hasnain','Adil','Areeha','Amina','komal','Laiba'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chats'),
      ),
      backgroundColor: Colors.grey.shade300,
      body: Container(
        margin: const EdgeInsets.all(2.0),
        child: ListView.builder(
            itemCount: usernames.length,
            itemBuilder: (context, index)
                {
                  if(usernames.length != 0) {
                    return customCard(
                      imageUrl: 'assets/images/user-1.jpg',
                      title: '${usernames[index]}',
                      subTitle: '$index',
                    );
                  }
                  else
                    {
                      return CircularProgressIndicator();
                    }
                }
        ),
        // child: ListView(
        //
        //   children: <Widget>[
        //     customCard(title: 'Abdul Rehman',subTitle: 'Hello',lastSeen: '5min ago',imageUrl: 'assets/images/user-1.jpg'),
        //     customCard(title: 'M. Zain',subTitle: 'How are you',lastSeen: '2min ago',imageUrl: 'assets/images/user-1.jpg'),
        //     customCard(title: 'Abdul Rehman',subTitle: 'Hello',lastSeen: '5min ago',imageUrl: 'assets/images/user-1.jpg'),
        //     customCard(title: 'Abdul Rehman',subTitle: 'Hello',lastSeen: '5min ago',imageUrl: 'assets/images/user-1.jpg'),
        //     customCard(title: 'Abdul Rehman',subTitle: 'Hello',lastSeen: '5min ago',imageUrl: 'assets/images/user-1.jpg'),
        //     customCard(title: 'Abdul Rehman',subTitle: 'Hello',lastSeen: '5min ago',imageUrl: 'assets/images/user-1.jpg'),
        //     customCard(title: 'Abdul Rehman',subTitle: 'Hello',lastSeen: '5min ago',imageUrl: 'assets/images/user-1.jpg'),
        //     customCard(title: 'Abdul Rehman',subTitle: 'Hello',lastSeen: '5min ago',imageUrl: 'assets/images/user-1.jpg'),
        //     customCard(title: 'Abdul Rehman',subTitle: 'Hello',lastSeen: '5min ago',imageUrl: 'assets/images/user-1.jpg'),
        //     customCard(title: 'Abdul Rehman',subTitle: 'Hello',lastSeen: '5min ago',imageUrl: 'assets/images/user-1.jpg'),
        //     customCard(title: 'Abdul Rehman',subTitle: 'Hello',lastSeen: '5min ago',imageUrl: 'assets/images/user-1.jpg'),
        //     customCard(title: 'Abdul Rehman',subTitle: 'Hello',lastSeen: '5min ago',imageUrl: 'assets/images/user-1.jpg'),
        //   ],
        // )
      )

    );
  }
  Widget customCard({String? title, String? subTitle, String? imageUrl, String? lastSeen})
  {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      child: ListTile(
        title: Text('$title'),
        subtitle: Text('$subTitle'),
        tileColor: Colors.white,
        leading: CircleAvatar(
          backgroundImage: AssetImage('$imageUrl'),
          radius: 25,
        ),
        trailing: Text('$lastSeen'),
      ),
    );
  }
}
