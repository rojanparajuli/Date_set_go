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
        title: const Text('Home Page'),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const ChatInbox()));
          }, icon: const Icon(Icons.message, color: Colors.blue,))
        ],
        
      ),
      drawer: Drawer(
            child: ListView(
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const Profile()));
                  },
                  child: const UserAccountsDrawerHeader(
                    accountName: Text('Prayash Rimal'),
                    accountEmail: Text('Home'),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: AssetImage('assets/prayash.jpg'),
                      
                    ),
                  ),
                ),
                ListTile(
                  title: const Text('Settings'),
                  leading: const Icon(Icons.settings),
                  onTap: (){
                  
                   Navigator.push(context, MaterialPageRoute(builder: (context)=> SettingPage()));
                  },
                ),
                ListTile(
                  title: const Text('Profile'),
                  leading: const Icon(Icons.person),
                  onTap: () {
                    
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const Profile()));
                  },
                ),
                ListTile(
                  title: const Text('Logout'),
                  leading: const Icon(Icons.logout),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginPage()));
                  },
                ),
                const ListTile(
                  title: Text('Report'),
                  leading: Icon(Icons.report),
                ),
                 const ListTile(
                  title: Text('About'),
                  leading: Icon(Icons.book),
                ),
              ],
            ),
          ),
    );
  }
}