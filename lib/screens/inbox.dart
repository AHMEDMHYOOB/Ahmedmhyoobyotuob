import 'package:flutter/material.dart';
import 'package:youtube_saber/screens/messages.dart';
import 'package:youtube_saber/screens/notifications.dart';

class InboxScreen extends StatelessWidget {
  const InboxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: <Widget>[
          TabBar(
            indicatorColor: Colors.black,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            tabs: <Widget>[
              Tab(
                text: "رسائل",
              ),
              Tab(
                text: "إشعار",
              )
            ],
          ),
          Expanded(
            child: TabBarView(
              children: <Widget>[
                MessagesScreen(),
                NotificationsScreen(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
