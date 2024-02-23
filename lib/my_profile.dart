import 'package:flutter/material.dart';
import 'navigate.dart';
class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:Navigate(),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        backgroundColor: Color(0xff243c63),
        title: Text(
          'Developer Profile',

          style: TextStyle(color: Colors.white,fontFamily: 'robot'),
        ),
      ),
      body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                    radius: 80, backgroundImage: AssetImage('image/pic.jpg')),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Karthick',
                    style: TextStyle(color: Colors.black, fontSize: 25,fontFamily: 'robot'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Flutter Developer',
                    style: TextStyle(color: Colors.black, fontSize: 25,fontFamily: 'robot'),
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: 300,
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Card(
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.green,
                      ),
                      title: Text(
                        '+91 9659369237',
                        style: TextStyle(fontSize: 25,fontFamily: 'robot'),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Card(
                    child: ListTile(
                      leading: Icon(
                        Icons.mail,
                        color: Colors.red,
                      ),
                      title: Text(
                        'bscit9706@gmail.com',
                        style: TextStyle(
                          fontSize: 25, fontFamily: 'robot'
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
