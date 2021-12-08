import 'dart:ui';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MagicButton());
}

class MagicButton extends StatefulWidget {
  const MagicButton({Key? key}) : super(key: key);

  @override
  _MagicButtonState createState() => _MagicButtonState();
}

class _MagicButtonState extends State<MagicButton> {
  int click = 0;
  void change() {
    setState(() {
      click = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage('https://images.unsplash.com/photo-1565742672058-6c844f5afc2e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fHRoaW5raW5nfGVufDB8MXwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
                  fit: BoxFit.cover)
          ),
          child: Center(
            child: Row(
              children: [
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      change();
                    },
                    child: Image.asset('images/ball$click.png'),
                  ),
                ),
              ],
            ),
          ),
         // color: Colors.black,
        ),
        appBar: AppBar(
          flexibleSpace: const Image(
            image: NetworkImage('https://images.unsplash.com/photo-1496262967815-132206202600?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=923&q=80'),
            fit: BoxFit.cover,
          ),
          title: Center(
            child: Text(
              'ASK ME YOUR DOUBT',
              style: TextStyle(
                fontSize: 30.0,
                fontFamily: 'Shadows Into Light',
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade900,
              ),
            ),
          ),
          backgroundColor: Colors.blueGrey.shade900,
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
