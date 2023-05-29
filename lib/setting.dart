import 'package:flutter/material.dart';
import 'package:sampleflutter/login.dart';
import 'package:sampleflutter/profile.dart';
import 'package:sampleflutter/setting.dart';

class SettingPage extends StatelessWidget {
   final GlobalKey<ScaffoldState> homeKey = GlobalKey();

 SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.person, color: Colors.pink,),
            title: Text('Edit Profile'),
            onTap: () {
              // navigate to edit profile page
            },
          ),
          ListTile(
            leading: Icon(Icons.notifications_active,color: Colors.pink,),
            title: Text('Notification Settings'),
            onTap: () {
              // navigate to notification settings page
            },
          ),
          ListTile(
            leading: Icon(Icons.circle,color: Colors.pink,),
            title: Text('Story Settings'),
            onTap: () {
              // navigate to story settings page
            },
          ),
           ListTile(
            leading: Icon(Icons.login,color: Colors.pink,),
            title: Text('Login Settings'),
            onTap: () {
              // navigate to login settings page
            },
          ),
          ListTile(
            leading: Icon(Icons.privacy_tip,color: Colors.lightGreen,),
            title: Text('privacy settings'),
            onTap: () {
              // navigate to privacy settings page
            },
          ),
          ListTile(
            leading: Icon(Icons.text_fields,color: Colors.black,),
            title: Text('Text settings'),
            onTap: () {
              // navigate to text settings page
            },
          ),
          ListTile(
            leading: Icon(Icons.block_flipped,color: Colors.red,),
            title: Text('Blockings'),
            onTap: () {
              // navigate to blocking settings page
            },
          ),
          ListTile(
            leading: Icon(Icons.person_add_disabled,color: Colors.red,),
            title: Text('Deactivation'),
            onTap: () {
              // navigate to deactive settings page
            },
          ),
          ListTile(
            leading: Icon(Icons.date_range,color: Colors.pink,),
            title: Text('Age range'),
            onTap: () {
              // navigate to age settings page
            },
          ),
          ListTile(
            leading: Icon(Icons.location_on,color: Colors.blue,),
            title: Text('Location settings'),
            onTap: () {
              // navigate to Location settings page
            },
          ),
          ListTile(
            leading: Icon(Icons.add_card,color: Color.fromARGB(255, 14, 199, 20),),
            title: Text('Payment'),
            onTap: () {
              // navigate to Payment settings page
            },
          ),
          ListTile(
            leading: Icon(Icons.favorite,color: Colors.pink,),
            title: Text(' People you liked'),
            onTap: () {
              // navigate to likes settings page
            },
          ),
          ListTile(
            leading: Icon(Icons.messenger,color: Colors.pink,),
            title: Text('Text settings'),
            onTap: () {
              // navigate to inbox settings page
            },
          ),
          ListTile(
            leading: Icon(Icons.quick_contacts_mail_rounded,color: Colors.blue,),
            title: Text('Add Contacts'),
            onTap: () {
              // navigate to contact settings page
            },
          ),
          ListTile(
            leading: Icon(Icons.report, color: Colors.red,),
            title: Text('Report'),
            onTap: () {
              // navigate to About settings page
            },
          ),
          ListTile(
            leading: Icon(Icons.feedback,color: Colors.green,),
            title: Text('Give us feedback'),
            onTap: () {
              // navigate to story settings page
            },
          ),
        ],
      ),
    );
  }
}


