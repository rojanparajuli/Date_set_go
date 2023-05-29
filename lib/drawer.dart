import 'package:flutter/material.dart';
import 'package:sampleflutter/login.dart';
import 'package:sampleflutter/notification.dart';
import 'package:sampleflutter/profile.dart';
import 'package:sampleflutter/searchbar.dart';
import 'package:sampleflutter/setting.dart';

import 'home_page.dart';

class Homepage extends StatelessWidget {
  final GlobalKey<ScaffoldState> homeKey = GlobalKey();
   Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: SafeArea(
        child: Scaffold(
          key: homeKey,
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
          bottomNavigationBar: const TabBar(
            labelColor: Colors.blue,
            indicatorColor: Colors.red,
            
            tabs: [
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.favorite),
            ),
            Tab(
              icon: Icon(Icons.person_add),
            ),
            Tab(
              icon: Icon(Icons.notifications),
            ),
            Tab(
              icon: Icon(Icons.search),
            )
          
          ]),
          body: TabBarView(

            
            children: [
            HomePage(),
            Container(),
            Container(),
            NotificationPage(),
            MyHomePage(),
          ])
        ),
      ),
    );
  }
}
