import 'package:flutter/material.dart';

class two extends StatelessWidget {
  const two({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 400,
          height: 200,
          color: Colors.green,
          child:Center(
            child:  Text('Page-2',
              style: TextStyle(
                fontSize: 30,
                color:Colors.black,
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.redAccent,
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
