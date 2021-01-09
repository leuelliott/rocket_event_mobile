import 'package:flutter/material.dart';

class Goals extends StatelessWidget {
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
                child: Text('GOALS OF THIS APPLICATION',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 36,
                        fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(bottom: 15, left: 15.0, right: 15),
                child: Divider(),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(bottom: 15, left: 15.0, right: 15),
                child: Text(
                  'The goal of this application is to create a user friendly and function relaiable event management system where that allows user to be able to view event listings and book for the event. ',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(bottom: 15, left: 15.0, right: 15),
                child: Text(
                  'Functional Requirements ',
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 8,
                              width: 8,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                            ),
                          ),
                          Text(
                            'View Event Listings.',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 8,
                              width: 8,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                            ),
                          ),
                          Text(
                            'Book for choice of Event.',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right:8.0, left: 8),
                            child: Container(
                              height: 8,
                              width: 8,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                            ),
                          ),
                          Text(
                            'Get Email Notification before \n event Date',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 8,
                              width: 8,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                            ),
                          ),
                          Text(
                            'Event Recommendation',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 15, left: 15.0, right: 15),
                      child: Divider(),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(bottom: 15, left: 15.0, right: 15),
                child: Text(
                  'Users are able to visit the page and and view several event listings with their event information and once the event is selected, the user can see the event details and book for that particular event. ',
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
              ),
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.black87,
                child: Center(
                    child: Text('Copyright © The Rocket Event Software 2020',
                        style: TextStyle(color: Colors.white, fontSize: 15))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
