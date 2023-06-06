import 'package:flutter/material.dart';

import 'page1.dart';
import 'page2.dart';
import 'page3.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _currentindex=0;
  final pages=[
    one(),
    two(),
    three(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: Text('Flutter Apps',
        style: TextStyle(color: Colors.greenAccent,
          fontSize: 20
        ),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: ListView(
          children: [
            ListTile(
              onTap: (){
                setState(() {
                  _currentindex=0;
                });
              },
              title: Text('Home',
                style: TextStyle(fontSize: 25,
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            ListTile(
              onTap: (){
                setState(() {
                  _currentindex=1;
                });
              },
              title: Text('call',
                style: TextStyle(fontSize: 25,
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            ListTile(
              onTap: (){
                setState(() {
                  _currentindex=2;
                });
              },
              title: Text('Search',
                style: TextStyle(fontSize: 25,
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amberAccent,
        currentIndex: _currentindex,
        items: [
          BottomNavigationBarItem(
            icon: Icon((Icons.home)),
            label:('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon((Icons.call)),
            label:('Call'),
          ),
          BottomNavigationBarItem(
            icon: Icon((Icons.search)),
            label:('Search'),
          ),
        ],
        onTap: (index){
          setState(() {
            _currentindex=index;
          });
        },
      ),
      body: pages[_currentindex],
    );
  }
}


