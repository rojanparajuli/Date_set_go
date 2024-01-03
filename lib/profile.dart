import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Profile'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Center(
              child: Image.asset('assets/prayash.jpg',
            height: 300,
            width: 300,
          )),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'NAME:Prayash Rimal',
            style: TextStyle(
                fontSize: 40, color: Colors.pink, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text('gender: Male', style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          const SizedBox(
            height: 5,
          ),
          const Text('Age:45', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          const SizedBox(
            height: 5,
          ),
          const Text('Address:Newyork, USA', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          const SizedBox(
            height: 200,
          ),
          const Text('DATE SET GO'),
         
        ],
      ),
    );
  }
}

