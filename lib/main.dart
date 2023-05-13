import 'package:flutter/material.dart';
import 'package:youtube_saber/youtube_main.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "YouTube UI",
      home: YoutubeMain(),
    );
  }
}
