import 'dart:io';
import 'package:flutter_projet/navigate.dart';
import 'package:share_plus/share_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

import 'app_data_image.dart';
import 'display_image.dart';
import 'indigator.dart';

class Pageviewimage extends StatefulWidget {
  const Pageviewimage({super.key});

  @override
  State<Pageviewimage> createState() => _PageviewimageState();
}

class _PageviewimageState extends State<Pageviewimage> {
  var _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:

      Navigate(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xff243c63),
        actions: [
          PopupMenuButton<int>(
              itemBuilder: (context) => [
                    PopupMenuItem(value: 1, child: Text('share')),
                  ],
              elevation: 2,
              onSelected: (value) {
                if (value == 1) {
                  _shareInfo();
                }
              })
        ],
        title: Text(
          'Page view image',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 30),
              height: 500,
              width: 450,
              child: PageView.builder(
                  onPageChanged: (index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  controller: PageController(viewportFraction: 0.7),
                  itemCount: appdataimage.length,
                  itemBuilder: (context, index) {
                    var _Scale = _selectedIndex == index ? 1.0 : 0.8;
                    return TweenAnimationBuilder(
                        tween: Tween(begin: _Scale, end: _Scale),
                        duration: Duration(microseconds: 500),
                        builder: (context, value, child) {
                          return Transform.scale(
                            scale: value,
                            child: child,
                          );
                        },
                        child: Displayimage(appDataImage: appdataimage[index]));
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    appdataimage.length,
                    (index) => Indicator(
                        isActive: _selectedIndex == index ? true : false))
              ],
            )
          ],
        ),
      )),
    );
  }

  _shareInfo() async {
    print('................share ');
    print(appdataimage[_selectedIndex].image);

    ByteData imagebyte =
        await rootBundle.load(appdataimage[_selectedIndex].image);

    final temp = await getTemporaryDirectory();

    print('Directory : $temp');

    final path = '${temp.path}/image1.jpg';

    print('Image Path : $path');

    File(path).writeAsBytesSync(imagebyte.buffer.asUint8List());

    await Share.shareFiles([path], text: '');
  }
}
