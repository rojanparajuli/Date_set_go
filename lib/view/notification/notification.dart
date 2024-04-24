import 'package:flutter/material.dart';




class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  _NotificationPageState createState() => _NotificationPageState();
}
  List<String> notifications = [
    'Notification 1',
    'Notification 2',
    'Notification 3',
    'Notification 4',
    'Notification 5',
    'Notification 7',
    'Notification 8',
    'Notification 9',
    'Notification 10',
    'Notification 11',
    'Notification 12',
    'Notification 13',
    'Notification 14',
    'Notification 15',
    'Notification 16',
    'Notification 17',
    'Notification 18',
    'Notification 19',
    'Notification 20',
    'Notification 21',
    'Notification 22',
    'Notification 23',
    'Notification 24',
    'Notification 25',
  ];

class _NotificationPageState extends State<NotificationPage> {

  List<String> filteredNotifications = [];
  bool isRead = true;

  @override
  void initState() {
    super.initState();
    filteredNotifications.addAll(notifications);
  }

  void filterNotifications(String query) {
    setState(() {
      filteredNotifications = notifications
          .where((notification) =>
              notification.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  void markAsRead() {
    setState(() {
      notifications.clear();
      filteredNotifications.clear();
    });
  }

  void markAsUnread() {
    setState(() {
      filteredNotifications.addAll(notifications);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification Page'),
        actions: [
          IconButton(
            icon: Icon(Icons.check),
            onPressed: isRead ? null : markAsRead,
          ),
          IconButton(
            icon: Icon(Icons.undo),
            onPressed: isRead ? markAsUnread : null,
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: filterNotifications,
              decoration: InputDecoration(
                labelText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredNotifications.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(filteredNotifications[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
