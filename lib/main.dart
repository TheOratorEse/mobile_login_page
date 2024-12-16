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
            backgroundColor: Colors.deepPurple,
            //title: Text('My App'),
          ),
          drawer: Drawer(
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            child: ListView(children: [
              DrawerHeader(
                  decoration: BoxDecoration(
                      // color: const Color.fromARGB(255, 104, 58, 183),
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://i.ibb.co/mD0Tr1Q/bg-image.jpg'),
                          fit: BoxFit.fill)),
                  child: Text(
                    'Menu',
                    style: TextStyle(fontSize: 35, color: Colors.white),
                    textAlign: TextAlign.left,
                  )),
              ListTile(
                title: Text(
                  'My Profile',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                leading: Icon(
                  Icons.person_3_outlined,
                  color: Colors.deepPurple,
                  size: 25,
                ),
              )
            ]),
          ),
          body: Column(
            children: [
              HomeScreen(),
            ],
          ),
          persistentFooterButtons: [
            Text.rich(
              TextSpan(
                  text: 'By continuing, uou agree to our terms of service'),
            ),
          ],
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
            height: MediaQuery.sizeOf(context).height * 0.2,
            // width: 400,
            margin: EdgeInsets.only(top: 10, bottom: 30),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      'https://i.ibb.co/mD0Tr1Q/bg-image.jpg',
                    ),
                    fit: BoxFit.fill),
                shape: BoxShape.circle),
            child: Text(
              'Welcome back',
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255), fontSize: 20),
            ),
          ),
          Form(
            child: Center(
              child: Column(
                spacing: 25,
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                        //icon: Icon(Icons.person),
                        prefixIcon: Icon(Icons.person_2_outlined),
                        label: Text('Username'),
                        hintText: 'Enter your username here',
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 16.0),
                        border: OutlineInputBorder()),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        //  icon: Icon(Icons.password),
                        prefixIcon: Icon(Icons.password_outlined),
                        label: Text('Password'),
                        hintText: 'Enter your password',
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 16.0),
                        border: OutlineInputBorder()),
                  ),
                  FilledButton(
                    onPressed: () {},
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
