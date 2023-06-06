import 'package:flutter/material.dart';

class three extends StatelessWidget {
  const three({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 400,
          height: 200,
          color: Colors.greenAccent,
          child:Center(
            child:  Text('Page-3',
              style: TextStyle(
                fontSize: 30,
                color:Colors.black,
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.cyan,
        onPressed: (){},
        child:Text('Click',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
