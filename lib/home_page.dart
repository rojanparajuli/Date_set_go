import 'package:flutter/material.dart';
import 'package:sampleflutter/chat_page.dart';
import 'package:sampleflutter/profile.dart';
import 'package:sampleflutter/setting.dart';

import 'login.dart';




class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> ChatInbox()));
          }, icon: Icon(Icons.message, color: Colors.blue,))
        ],
        
      ),
      drawer: Drawer(
            child: ListView(
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Profile()));
                  },
                  child: UserAccountsDrawerHeader(
                    accountName: Text('Prayash Rimal'),
                    accountEmail: Text('Home'),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: AssetImage('assets/prayash.jpg'),
                      
                    ),
                  ),
                ),
                ListTile(
                  title: Text('Settings'),
                  leading: Icon(Icons.settings),
                  onTap: (){
                  
                   Navigator.push(context, MaterialPageRoute(builder: (context)=> SettingPage()));
                  },
                ),
                ListTile(
                  title: Text('Profile'),
                  leading: Icon(Icons.person),
                  onTap: () {
                    
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Profile()));
                  },
                ),
                ListTile(
                  title: Text('Logout'),
                  leading: Icon(Icons.logout),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                  },
                ),
                ListTile(
                  title: Text('Report'),
                  leading: Icon(Icons.report),
                ),
                 ListTile(
                  title: Text('About'),
                  leading: Icon(Icons.book),
                ),
              ],
            ),
          ),
    );
  }
}