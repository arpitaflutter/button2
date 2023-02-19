import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("A shadow button"),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
        body: Center(
          child: Container(
            height: 60,width: 150,
            decoration: BoxDecoration(
                color:  Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.teal),
                boxShadow: [
                  BoxShadow(
                    color: Colors.teal,
                    blurRadius: 4,
                    spreadRadius: 3,
                    offset: Offset(0, 2)
                  ),
                ]
            ),
            child: Center(child: Text("Tap",style: TextStyle(fontSize: 15,color: Colors.black))),
          ),
        ),
      ),
    );
  }
}
