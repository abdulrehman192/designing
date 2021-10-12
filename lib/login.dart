
import 'package:designing/chatscreen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  //const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 20.0),
            child: Column(
                children: <Widget>[
                  SizedBox(height: 50.0,),
                  CircleAvatar(
                    radius: 60.0,
                    backgroundColor: Colors.blueGrey,
                    child: Icon(Icons.person,size: 90,color: Colors.white,),
                  ),
                  SizedBox(height: 80,),
                  textBox(icon: Icon(Icons.email_outlined),labelText: 'Please Enter Email'),
                  textBox(icon: Icon(Icons.lock_outline),labelText: 'Please Enter Password',isPassword: true),
                  Container(
                    height: 40.0,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Colors.blueGrey,
                    ),
                    child: ElevatedButton(

                        onPressed: ()
                        {
                          Navigator.push(context,MaterialPageRoute(builder: (context) => Chat()));
                        },
                        child: Text('Login'),
                    ),
                  )
                ],
            ),
          ),
        ),
      ),
    );
  }

  Widget textBox({Icon? icon,String? labelText,bool isPassword = false})
  {
    return Container(
      margin: EdgeInsets.only(bottom: 15.0),
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      height: 60.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.white,
      ),
      child: TextField(
        obscureText: isPassword,
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: icon,
          labelText: labelText,
        ),
      ),
    );
  }
}
