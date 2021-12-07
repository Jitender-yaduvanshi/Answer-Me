import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/rendering.dart';

void main() {
  runApp(MagicButton());
}

class MagicButton extends StatefulWidget {
  const MagicButton({Key? key}) : super(key: key);

  @override
  _MagicButtonState createState() => _MagicButtonState();
}

class _MagicButtonState extends State<MagicButton> {
  int Click = 0;
  void Change() {
    setState(() {
      Click = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:
        Container(
          child: Center(
            child: Row(
              children: [
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      print('clicked');
                      Change();
                    },
                    child: Image.asset('images/ball$Click.png'),
                  ),
                ),
              ],
            ),
          ),
         color: Image.asset('images/back.png').color,
          //color: Colors.blueGrey.shade900,
        ),
        appBar: AppBar(
          flexibleSpace: const Image(
            image: NetworkImage(
                'https://images.unsplash.com/photo-1496065187959-7f07b8353c55?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80'),
            fit: BoxFit.cover,
          ),
          title: Center(child: Text('ASK ME ANYTHING')),
          backgroundColor: Colors.grey.shade900,
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
