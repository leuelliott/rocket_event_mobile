import 'package:flutter/material.dart';

class Frameworks extends StatelessWidget {
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
                child: Text('FRAMEWORKS AND TECHNOLOGIES',
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
                  'For This Application the following technologies and frameworks were used to achieve this project. ',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
               padding: const EdgeInsets.only(bottom: 15, left: 15.0, right: 15),
                child: Text(
                  'Hover on any of the options to view details ',
                  style: TextStyle(fontSize: 22, ),
                ),
              ),
              Container(child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(left:50.0),
                  child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(height: 10, width: 10, decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.all(Radius.circular(10)),),),
                    ),
                    Text('Flutter', style: TextStyle(fontSize: 20),),
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:50.0),
                  child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(height: 10, width: 10, decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.all(Radius.circular(10)),),),
                    ),
                    Text('Dart', style: TextStyle(fontSize: 20),),
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:50.0),
                  child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(height: 10, width: 10, decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.all(Radius.circular(10)),),),
                    ),
                    Text('VSCode Software', style: TextStyle(fontSize: 20),),
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:50.0),
                  child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(height: 10, width: 10, decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.all(Radius.circular(10)),),),
                    ),
                    Text('Bootstrap', style: TextStyle(fontSize: 20),),
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:50.0),
                  child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(height: 10, width: 10, decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.all(Radius.circular(10)),),),
                    ),
                    Text('Jquery', style: TextStyle(fontSize: 20),),
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:50.0),
                  child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(height: 10, width: 10, decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.all(Radius.circular(10)),),),
                    ),
                    Text('HTML', style: TextStyle(fontSize: 20),),
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:50.0),
                  child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(height: 10, width: 10, decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.all(Radius.circular(10)),),),
                    ),
                    Text('CSS', style: TextStyle(fontSize: 20),),
                  ]),
                ),
              ],)),
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
