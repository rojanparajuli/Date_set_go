import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
   final GlobalKey<ScaffoldState> homeKey = GlobalKey();

 SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.person, color: Colors.pink,),
            title: const Text('Edit Profile'),
            onTap: () {
              // navigate to edit profile page
            },
          ),
          ListTile(
            leading: const Icon(Icons.notifications_active,color: Colors.pink,),
            title: const Text('Notification Settings'),
            onTap: () {
              // navigate to notification settings page
            },
          ),
          ListTile(
            leading: const Icon(Icons.circle,color: Colors.pink,),
            title: const Text('Story Settings'),
            onTap: () {
              // navigate to story settings page
            },
          ),
           ListTile(
            leading: const Icon(Icons.login,color: Colors.pink,),
            title: const Text('Login Settings'),
            onTap: () {
              // navigate to login settings page
            },
          ),
          ListTile(
            leading: const Icon(Icons.privacy_tip,color: Colors.lightGreen,),
            title: const Text('privacy settings'),
            onTap: () {
              // navigate to privacy settings page
            },
          ),
          ListTile(
            leading: const Icon(Icons.text_fields,color: Colors.black,),
            title: const Text('Text settings'),
            onTap: () {
              // navigate to text settings page
            },
          ),
          ListTile(
            leading: const Icon(Icons.block_flipped,color: Colors.red,),
            title: const Text('Blockings'),
            onTap: () {
              // navigate to blocking settings page
            },
          ),
          ListTile(
            leading: const Icon(Icons.person_add_disabled,color: Colors.red,),
            title: const Text('Deactivation'),
            onTap: () {
              // navigate to deactive settings page
            },
          ),
          ListTile(
            leading: const Icon(Icons.date_range,color: Colors.pink,),
            title: const Text('Age range'),
            onTap: () {
              // navigate to age settings page
            },
          ),
          ListTile(
            leading: const Icon(Icons.location_on,color: Colors.blue,),
            title: const Text('Location settings'),
            onTap: () {
              // navigate to Location settings page
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_card,color: Color.fromARGB(255, 14, 199, 20),),
            title: const Text('Payment'),
            onTap: () {
              // navigate to Payment settings page
            },
          ),
          ListTile(
            leading: const Icon(Icons.favorite,color: Colors.pink,),
            title: const Text(' People you liked'),
            onTap: () {
              // navigate to likes settings page
            },
          ),
          ListTile(
            leading: const Icon(Icons.messenger,color: Colors.pink,),
            title: const Text('Text settings'),
            onTap: () {
              // navigate to inbox settings page
            },
          ),
          ListTile(
            leading: const Icon(Icons.quick_contacts_mail_rounded,color: Colors.blue,),
            title: const Text('Add Contacts'),
            onTap: () {
              // navigate to contact settings page
            },
          ),
          ListTile(
            leading: const Icon(Icons.report, color: Colors.red,),
            title: const Text('Report'),
            onTap: () {
              // navigate to About settings page
            },
          ),
          ListTile(
            leading: const Icon(Icons.feedback,color: Colors.green,),
            title: const Text('Give us feedback'),
            onTap: () {
              // navigate to story settings page
            },
          ),
        ],
      ),
    );
  }
}


