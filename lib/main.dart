import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Card in Flutter',
      home: MeuApp(),
    );
  }
}

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF150F2E),
              Color(0xFF1C0E2A),
              Color(0xFF29194D),
              Color(0xFF371C54),
              Color(0xFF331D58),
              Color(0xFF2D1D58),
              Color(0xFF2C1F5C),
              Color(0xFF291F5C),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/avatar-ana.jpg'),
                radius: 100.0,
              ),
              Text(
                'Ana Clara Araújo',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'DancingScript',
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 250.0,
                child: Divider(
                  color: Colors.brown.shade100,
                ),
              ),
              Text(
                'WEB AND MOBILE DEVELOPER',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  color: Colors.white,
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Card(
                color: Colors.white70,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(Icons.local_phone_outlined,
                      size: 25.0, color: Color(0xFF4A1E9D)),
                  title: Text(
                    '+55 69 9 8235 6521',
                    style: TextStyle(
                      color: Color(0xFF4A1E9D),
                      fontFamily: 'SourceSansPro',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white70,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading:
                      Icon(Icons.email, size: 30.0, color: Color(0xFF4A1E9D)),
                  title: Text(
                    'anaclara@discente.ufg.br',
                    style: TextStyle(
                      color: Color(0xFF4A1E9D),
                      fontFamily: 'SourceSansPro',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
