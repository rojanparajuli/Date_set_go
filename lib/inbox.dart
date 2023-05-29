import 'package:flutter/material.dart';

class ChatApp extends StatelessWidget {
   const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: ChatPage(),
    );
  }
}

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<String> messages = [];

  TextEditingController _textEditingController = TextEditingController();

  void _sendMessage(String message) {
    setState(() {
      messages.add(message);
    });
    _textEditingController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('prayash'),
        actions: [
          IconButton(
            icon: Icon(Icons.video_call),
            onPressed: () {
              // Handle video call action
            },
          ),
          IconButton(
            icon: Icon(Icons.phone),
            onPressed: () {
              // Handle voice call action
            },
          ),
          IconButton(
            icon: Icon(Icons.info),
            onPressed: () {
              // Handle info  action
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(messages[index]),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _textEditingController,
                    decoration: InputDecoration(
                      hintText: 'Type a message',
                    ),
                  ),
                ),
                 IconButton(
                  icon: Icon(Icons.favorite, color: Colors.pink,),
                  onPressed: () {
                  },
                ),
                 IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    _sendMessage(_textEditingController.text);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
