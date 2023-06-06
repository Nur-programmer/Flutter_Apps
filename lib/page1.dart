import 'package:flutter/material.dart';

class one extends StatelessWidget {
  const one({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 400,
          height: 200,
          color: Colors.pink,
          child:Center(
             child:  Text('Page-1',
               style: TextStyle(
                 fontSize: 30,
                 color:Colors.black,
               ),
             ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightGreenAccent,
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
