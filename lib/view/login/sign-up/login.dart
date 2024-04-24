import 'package:flutter/material.dart';
import 'package:sampleflutter/drawer.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Date Set Go'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/new logo.png'),
            SizedBox(
              height: 150,
            ),
            ElevatedButton(
              onPressed: () {
                
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Enter your details'),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Full Name',
                            ),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Mobile Number',
                            ),
                            keyboardType: TextInputType.phone,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Email Address',
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Date of Birth',
                            ),
                            keyboardType: TextInputType.datetime,
                          ),
                        ],
                      ),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Cancel'),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size(200, 30)),
                          onPressed: () {
                            // Do something with the user input
                            Navigator.of(context).pop();
                          },
                          child: Text('Submit'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Sign Up'),
            ),
            ElevatedButton(
              
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Enter phone number and password'),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Phone number',
                            ),
                          ),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'Password',
                            ),
                          ),
                          TextButton(
                            child: Text("Forget Password",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text('Reset Password'),
                                    content: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        TextField(
                                          decoration: InputDecoration(
                                            labelText: 'Phone number',
                                          ),
                                        ),
                                        TextField(
                                          obscureText: true,
                                          decoration: InputDecoration(
                                            labelText: 'New Password',
                                          ),
                                        ),
                                        TextField(
                                          obscureText: true,
                                          decoration: InputDecoration(
                                            labelText: 'conform Password',
                                          ),
                                        ),
                                      ],
                                    ),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('Cancel'),
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          // Do something to reset the password
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('Submit'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Homepage()));
                                  },
                                  child: Text('Submit')),
                              TextButton(
                                  onPressed: () {
                                     Navigator.of(context).pop();
                                  }, child: Text('Cancel')),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                );
              },
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
