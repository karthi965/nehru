import 'package:flutter/material.dart';
import 'package:flutter_projet/page_view_image.dart';
import 'package:flutter_projet/page_view_text.dart';
import 'company_profile.dart';
import 'my_profile.dart';

class Navigate extends StatelessWidget {
  const Navigate({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text(
              'Shri Jawaharlal Nehru',
              style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'robot'),
            ),
            accountEmail: const Text(
              'Version 1.0',
              style: TextStyle(color: Colors.white,fontSize: 15,fontFamily: 'robot'),
            ),
            currentAccountPicture: CircleAvatar(
              radius: 50,
              backgroundColor:Colors.white10,
              child: ClipRect(
                child: Image.asset(
                  'image/nehru.png',
                  width: 80,
                  height: 80,
                ),
              ),
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('image/back111.jpg'), fit: BoxFit.cover),
            ),
          ),
          ListTile(
            title: const Text('Quotes',style: TextStyle(fontFamily: 'robot'),),
            onTap: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                    builder: (BuildContext Context) => PageviewText())),
          ),
          ListTile(
            title: const Text('Quotes Image',style: TextStyle(fontFamily: 'robot'),),
            onTap: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                    builder: (BuildContext Context) => Pageviewimage(),)),
          ),
          ListTile(
            title: const Text('Developer Profile',style: TextStyle(fontFamily: 'robot'),),
            onTap: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                    builder: (BuildContext Context) => MyProfile())),
          ),
          ListTile(
            title: const Text('Company Profile',style: TextStyle(fontFamily: 'robot'),),
            onTap: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                    builder: (BuildContext Context) => CompanyProfile())),
          ),
        ],
      ),
    );
  }
}
