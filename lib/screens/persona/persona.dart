import 'package:flutter/material.dart';

class Persona extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
          body: Container(
        child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
              Container(
                height: 500,
                width: double.infinity,
                color: Colors.blueAccent,
                child: Center(
                  child: ListTile(
                    title: Text(
                      'The Rocket Event Software',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 48,
                      ),
                    ),
                    subtitle: Text(
                      'Get Event Listings Around you today',
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text('APPLICATION PERSONA',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 36,
                        fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15, left: 15.0, right: 15),
                child: Divider(),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15, left: 15.0, right: 15),
                child: Text(
                  'Meet Geofrey  ',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
               padding: const EdgeInsets.only(bottom: 15, left: 15.0, right: 15),
                child: Text(
                  "Geofrey is a lawyer who likes to party and attend events during his spare time and holidays. He also has issues with attending events without having the tickets to these events (mostly). This is until Geofrey finds out about 'The Rocket Event Software'. ",
                  style: TextStyle(fontSize: 22, ),
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.only(bottom: 15, left: 15.0, right: 15),
                child: Divider(),
              ),
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.black87,
                child: Center(
                    child: Text('Copyright © The Rocket Event Software 2020',
                        style: TextStyle(color: Colors.white, fontSize: 15))),
              ),
              
            ])),
      ),
    );
  }
}
