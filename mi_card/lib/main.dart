import 'package:flutter/material.dart';

void main() {
  runApp(MiCard());
}

class MiCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                foregroundImage: AssetImage('images/bbk.png'),
                backgroundColor: Colors.transparent,
              ),
              Text(
                "Bülent Barış Kılıç",
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 36,
                  color: Colors.white,
                ),
              ),
              Text(
                "FLUTTER DEVELOPER",
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 20,
                  color: Colors.white.withOpacity(0.8),
                  letterSpacing: 2.5,
                ),
              ),
              Divider(
                color: Colors.white,
                height: 20,
                indent: 100,
                endIndent: 100,
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  title: Text(
                    '+49 123 456 78 99',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'baris@email.com',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
