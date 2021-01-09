import 'package:flutter/material.dart';

class Sketches extends StatelessWidget {
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
                      title: Text('The Rocket Event Software', style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 48,
                      ),),
                      subtitle: Text('Get Event Listings Around you today', style: TextStyle(
                        color: Colors.white54,
                        fontSize: 18,
                      ),),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text('Sketches', style: TextStyle(color: Colors.black, fontSize: 36, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15, left:15.0, right: 15),
                  child: Divider(),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0, right: 15, left: 15, bottom: 20),
                  child: Text('Listings Page', style: TextStyle(color: Colors.black, fontSize: 34, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:3.0, left: 15, right:15, bottom: 10),
                  child: Text('Destop'),
                ),
                  Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.only(bottomLeft: Radius.circular(0), ),
                      image: DecorationImage(
                        image: AssetImage('assets/sketches/home_desktop.jpg'),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15, left:15.0, right: 15),
                  child: Divider(),
                ),
                 Padding(
                  padding: const EdgeInsets.only(top:3.0, left: 15, right:15, bottom: 10),
                  child: Text('Mobile'),
                ),
                  Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.only(bottomLeft: Radius.circular(0), ),
                      image: DecorationImage(
                        image: AssetImage('assets/sketches/home_mobile.jpg'),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15, left:15.0, right: 15),
                  child: Divider(),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0, right: 15, left: 15, bottom: 20),
                  child: Text('Listing Details Page', style: TextStyle(color: Colors.black, fontSize: 34, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:3.0, left: 15, right:15, bottom: 10),
                  child: Text('Destop'),
                ),
                  Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.only(bottomLeft: Radius.circular(0), ),
                      image: DecorationImage(
                        image: AssetImage('assets/sketches/home_details_desktop.jpg'),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15, left:15.0, right: 15),
                  child: Divider(),
                ),
                 Padding(
                  padding: const EdgeInsets.only(top:3.0, left: 15, right:15, bottom: 10),
                  child: Text('Mobile'),
                ),
                  Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.only(bottomLeft: Radius.circular(0), ),
                      image: DecorationImage(
                        image: AssetImage('assets/sketches/home_details_mobile.jpg'),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  color: Colors.black87,
                  child: Center(child: Text('Copyright © The Rocket Event Software 2020', style: TextStyle(color: Colors.white, fontSize: 15))),
                )
              ],
            ),
          ),
        ));
  }
}
