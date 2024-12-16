import 'package:flutter/material.dart';

void main() => runApp(MyHome());

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My Flutter App',
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepPurpleAccent,
            //title: Text('My App'),
          ),
          body: Column(
            children: [
              HomeScreen(),
            ],
          ),
        ));
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            height: MediaQuery.sizeOf(context).height *0.2,
           // width: 400,
            margin: EdgeInsets.only(top: 10, bottom: 30),
            decoration: BoxDecoration( image: DecorationImage(image: NetworkImage('https://i.ibb.co/mD0Tr1Q/bg-image.jpg',), fit: BoxFit.fill), shape: BoxShape.circle),
            child: Text(
              'Welcome back',
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 20),
            ),
          ),
          Form(
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                      alignLabelWithHint: true,
                      icon: Icon(Icons.person),
                      label: Text('Username'),
                      hintText: 'Enter your username here'),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      icon: Icon(Icons.password),
                      label: Text('Password'),
                      hintText: 'Enter your password'),
                ),
                SizedBox(height: 10),
                FilledButton(
                  onPressed: () {},
                  child: Text('Login'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
