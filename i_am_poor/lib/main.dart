import 'package:flutter/material.dart';

void main() {
  runApp(IAmPoor());
}

class IAmPoor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text("I Am Poor!"),
          backgroundColor: Colors.white12,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.network(
              "https://cdn.pixabay.com/photo/2015/07/12/21/19/coal-842468_960_720.jpg",
            ),
          ),
        ),
      ),
    );
  }
}
