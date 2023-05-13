import 'package:flutter/material.dart';
import 'package:youtube_saber/screens/home.dart';
import 'package:youtube_saber/screens/inbox.dart';
import 'package:youtube_saber/screens/library.dart';
import 'package:youtube_saber/screens/trending.dart';

class YoutubeMain extends StatefulWidget {
  @override
  _YoutubeMainState createState() => _YoutubeMainState();
}

class _YoutubeMainState extends State<YoutubeMain> {
  int _currentIndex = 0;

  _onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _screens = [
      HomeScreen(),
      TrendingScreen(),
      Center(child: Text("الاشتراكات")),
      InboxScreen(),
      LibraryScreen(),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.grey),
        title: Image.asset(
          'images/youtube_logo.png',
          width: 98.0,
          height: 22.0,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.videocam),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {},
          ),
        ],
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.red,
          onTap: _onTapped,
          items: [
            BottomNavigationBarItem(
                label: "الصفحة الرئيسية", icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                label: "مقترحه", icon: Icon(Icons.whatshot)),
            BottomNavigationBarItem(
                label: "الاشتراكات", icon: Icon(Icons.subscriptions)),
            BottomNavigationBarItem(
                label: " قناتي", icon: Icon(Icons.video_chat_rounded)),
            BottomNavigationBarItem(
                label: "المكتبه", icon: Icon(Icons.video_library)),
          ]),
    );
  }
}
