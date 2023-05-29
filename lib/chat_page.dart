import 'package:flutter/material.dart';




class ChatInbox extends StatelessWidget {
  const ChatInbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Message'),
        actions: [
          IconButton(
            icon: Icon(Icons.circle,color: Color.fromARGB(255, 1, 131, 5),),
            onPressed: () {
              //online button pressed
            },
          ),
          IconButton(
            icon: Icon(Icons.search_sharp),
            onPressed: () {
              // search button pressed
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/profile.jpg'),
            ),
            title: Text('Prayash Rimal'),
            subtitle: Text('pork ho?'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.reply),
                  onPressed: () {
                    // Handle reply button pressed
                  },
                ),
                IconButton(
                  icon: Icon(Icons.favorite, color: Colors.pink,),
                  onPressed: () {
                    // Handle like button pressed
                  },
                ),
              ],
            ),
          ),
          // Add more chat messages here
        ],
      ),
    );
  }
}
