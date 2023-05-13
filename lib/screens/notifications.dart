import 'package:flutter/material.dart';
import 'package:youtube_saber/models/notification_model.dart';

class NotificationsScreen extends StatelessWidget {
  final List<NotificationModel> data = notificationData;

  NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return ListTile(
            dense: true,
            leading: CircleAvatar(
              backgroundImage: NetworkImage(data[index].avatarUrl),
              radius: 16.0,
            ),
            title: data[index].messageType == "تعليق"
                ? Text("${data[index].name} علق: \"${data[index].message}\"")
                : Text("مشترك جديد ${data[index].name}"),
            subtitle: Text(data[index].timeStamp),
            trailing: IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
          );
        });
  }
}
