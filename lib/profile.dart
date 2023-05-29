import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Profile'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Center(
              child: Image.asset('assets/prayash.jpg',
            height: 300,
            width: 300,
          )),
          SizedBox(
            height: 10,
          ),
          Text(
            'NAME:Prayash Rimal',
            style: TextStyle(
                fontSize: 40, color: Colors.pink, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          Text('gender: Male', style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          SizedBox(
            height: 5,
          ),
          Text('Age:45', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          SizedBox(
            height: 5,
          ),
          Text('Address:Newyork, USA', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          SizedBox(
            height: 200,
          ),
          Text('DATE SET GO'),
         
        ],
      ),
    );
  }
}

