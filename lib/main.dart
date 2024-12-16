import 'package:flutter/material.dart';

void main() => runApp(MyHome());

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
                  'Profile',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                leading: Icon(
                  Icons.person_3_outlined,
                  color: Colors.deepPurple,
                  size: 25,
                ),
              ),
              ListTile(
                title: Text(
                  'Settings',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                leading: Icon(
                  Icons.settings_outlined,
                  color: Colors.deepPurple,
                  size: 25,
                ),
              ),
              ListTile(
                title: Text(
                  'Support',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                leading: Icon(
                  Icons.contact_page_outlined,
                  color: Colors.deepPurple,
                  size: 25,
                ),
              ),
              ListTile(
                title: Text(
                  'Notifications',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                leading: Icon(
                  Icons.notifications_active_outlined,
                  color: Colors.deepPurple,
                  size: 25,
                ),
              ),
            ]),
          ),
          body: Column(
            children: [
              HomeScreen(),
            ],
          ),
          persistentFooterButtons: [
            Text.rich(
              textAlign: TextAlign.center,
              TextSpan(children: [
                TextSpan(text: 'By continuing, you agree to our'),
                TextSpan(
                  text: ' terms and condition',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    decorationColor: Colors.blueAccent,
                    decoration: TextDecoration.underline,
                  ),
                ),
                TextSpan(text: ' and'),
                TextSpan(
                  text: ' terms and condition',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    decorationColor: Colors.blueAccent,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ]),
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
      heightFactor: 1.5,
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
              child: Container(
                margin: EdgeInsets.only(left: 10, right: 10),
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
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.horizontal(
                                  right: Radius.circular(60)))),
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
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.horizontal(
                                  right: Radius.circular(60)))),
                    ),
                  /*   FilledButton(
                      onPressed: () {},
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 20),
                      ),
                    ), */

                   GestureDetector(
                    onTap: (){
                      print('pressed');
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(60), color: Colors.deepPurple),
                      child: Text('Login', style: TextStyle(color: Colors.white, fontSize: 22),),
                    ),
                   )

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
