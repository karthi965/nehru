import 'package:flutter/material.dart';
import 'navigate.dart';
class CompanyProfile extends StatelessWidget {
  const CompanyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navigate(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white
        ),
        backgroundColor: Color(0xff243c63),
        title: Text(
          'Company  Profile',
          style: TextStyle(color: Colors.white, fontSize: 25,fontFamily: 'robot'),
        ),
      ),
      body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('image/tidy logo.jpg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Tidy Life India Pvt Ltd',
                        style: TextStyle(
                          color: Colors.pink,
                          fontSize: 23,
                          fontFamily: 'robot'
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 40,
                    width: 400,
                    child: Divider(
                      color: Color(0xff243c63),thickness: 2,
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.green,
                    ),
                    title: Text(
                      '+91 8610338291',
                      style: TextStyle(color: Colors.black, fontSize: 25,fontFamily: 'robot'),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                  child: ListTile(
                    leading: Icon(
                      Icons.mail,
                      color: Colors.red,
                    ),
                    title: Text(
                      'tidylifeindia@gmail.com',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                        fontFamily: 'robot'
                          ),
                    ),
                  ),
                ),
                Card(
                  margin:
                  EdgeInsetsDirectional.symmetric(horizontal: 25, vertical: 25),
                  child: ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Colors.blue,
                    ),
                    title: Text(
                      'S2, Sk Illam, 2nd street,\nNanmaganlam,\nChennai-600129.',
                      style: TextStyle(color: Colors.black,fontSize: 25,fontFamily: 'robot'),
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
