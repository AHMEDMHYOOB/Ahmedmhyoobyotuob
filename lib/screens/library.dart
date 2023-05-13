import 'package:flutter/material.dart';
import 'package:youtube_saber/models/youtube_model.dart';
import 'package:youtube_saber/video_list.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        _buildRecent(),
        _buildPersonal(context),
        _buildOffline(),
        _buildPlaylist(context),
      ],
    );
  }

  BoxDecoration _buildBottomBorder() => BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1.0, color: Colors.grey),
        ),
      );

  Widget _buildRecent() {
    return Container(
      height: 205.0,
      decoration: _buildBottomBorder(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(top: 16.0, left: 16.0),
            child: Text("مؤخرا"),
          ),
          Expanded(
            child: VideoList(
              listData: youtubeData,
              isHorizontalList: true,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPersonal(BuildContext context) {
    List<Map> items = [
      {"name": "تاريخ", "icon": Icon(Icons.history)},
      {"name": "فيديوهاتي", "icon": Icon(Icons.video_library)},
      {
        "name": "شاهد لاحقا",
        "icon": Icon(Icons.watch_later),
        "extra": "مقاطع الفيديو لم تتم مشاهدتها 25"
      },
    ];

    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: _buildBottomBorder(),
      child: Column(
        children: items
            .map((i) => ListTile(
                  leading: i["icon"],
                  title: i["extra"] == null
                      ? Text(i["name"])
                      : Row(
                          children: <Widget>[
                            Text(i["name"]),
                            Container(
                              margin: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                i["extra"],
                                style: Theme.of(context).textTheme.caption,
                              ),
                            ),
                          ],
                        ),
                ))
            .toList(),
      ),
    );
  }

  Widget _buildOffline() {
    return Container(
      decoration: _buildBottomBorder(),
      padding: const EdgeInsets.only(top: 16.0, left: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("متاح حاليا"),
          ListTile(
            leading: Icon(Icons.file_download),
            title: Text("تنزيلات"),
            subtitle: Text("20 فيديو"),
            trailing: Icon(
              Icons.check_circle,
              color: Colors.blue[700],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildPlaylist(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16.0, left: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text("قائمة التشغيل"),
              DropdownButton(
                style: Theme.of(context).textTheme.bodyText2,
                items: [
                  DropdownMenuItem(child: Text("(اضيف مؤخرا)")),
                  //  DropdownMenuItem(child: Text("(ا - ي)")),
                ],
                onChanged: null,
              ),
            ],
          ),
          ListTile(
            leading: Icon(Icons.thumb_up),
            title: Text("Liked videos"),
            subtitle: Text("248 videos"),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text("Naija Music Videos 2018"),
            subtitle: Text("Fatyellowbaby . 1509 videos"),
          ),
        ],
      ),
    );
  }
}
