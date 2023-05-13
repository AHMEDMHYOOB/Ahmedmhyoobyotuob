import 'package:flutter/material.dart';
import 'package:youtube_saber/video_list.dart';
import 'package:youtube_saber/models/youtube_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return VideoList(
      listData: youtubeData,
    );
  }
}
