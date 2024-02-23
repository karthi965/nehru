import 'package:share_plus/share_plus.dart';
import 'package:flutter/material.dart';

import 'app_data_text.dart';
import 'display_text.dart';
import 'navigate.dart';

class PageviewText extends StatefulWidget {
  const PageviewText({super.key});

  @override
  State<PageviewText> createState() => _PageviewTextState();
}

class _PageviewTextState extends State<PageviewText> {
  var _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navigate(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xff243c63),
        title: Text(
          'Quotes',
          style: TextStyle(color: Colors.white,fontFamily: 'robot'),
        ),
        actions: [
          PopupMenuButton<int>(
              itemBuilder: (context) => [
                PopupMenuItem(value: 1, child: Text("Share")),
              ],
              elevation: 2,
              onSelected: (value) {
                if (value == 1) {
                  _shareInfo();
                }
              }),
        ],),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 30,horizontal: 30),
                height: 520,
                width: 400,
                child: PageView.builder(
                    onPageChanged: (index) {
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                    itemCount: appdataText.length,
                    controller: PageController(viewportFraction: 0.8),
                    itemBuilder: (context, index) {
                      var _Scale = _selectedIndex == index ? 1.0 : 0.9;
                      return TweenAnimationBuilder(
                          tween: Tween(begin: _Scale, end: _Scale),
                          duration: Duration(microseconds: 500),
                          builder: (context, value, child) {
                            return Transform.scale(
                              scale: value,
                              child: child,
                            );
                          },
                          child: DisplayText(appDataText: appdataText[index]));
                    }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      (_selectedIndex + 1).toString() +
                          '/' +
                          appdataText.length.toString(),
                      style: TextStyle(fontSize: 25)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  _shareInfo() {
    print("---------share");
    print(appdataText[_selectedIndex].text);

    Share.share(appdataText[_selectedIndex].text);
  }
}
