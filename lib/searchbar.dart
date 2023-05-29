import 'package:flutter/material.dart';



class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                hintText: ('Search'),
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(Icons.search_sharp, color: Colors.black),
                  onPressed: () {},
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Image.asset('assets/image.jpg'),
          ),
          Expanded(
            flex: 1,
            child: Image.asset('assets/pic.jpg'),
          ),
        ],
      ),
    );
  }
}
