import 'package:flutter/material.dart';

void main() {
  runApp(
      MagicButton()
  );
}

class MagicButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.blueGrey.shade900,
        ),
        appBar: AppBar(
          title: Center(child: Text('ASK ME ANYTHING')),
          backgroundColor: Colors.grey.shade900,
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
