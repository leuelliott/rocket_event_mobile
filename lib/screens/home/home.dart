
import 'package:event_app/controllers/event_controller.dart';
import 'package:event_app/screens/events/events.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final eventController = Get.put(EventController());

 

 @override
  void initState() { 
    super.initState();
    eventController.fetchEvents();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Rocket Events Software')),
      body:  
         Container(
        child: Obx(() {
      if(eventController.isLoading.value)
        return Center(child: CircularProgressIndicator());
      else
      return ListView.builder(
        itemCount: eventController.events.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 15, right: 15),
            child: GestureDetector(
              onTap: () {
                Get.to(EventsScreen(),
                    arguments: eventController.events[index]);
              },
              child: Card(
                child: Column(
                  children: [
                    Container(
                      height: 280,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        // borderRadius: BorderRadius.circular(7),
                        image: DecorationImage(
                            image: NetworkImage(
                                eventController.events[index].icon),
                            fit: BoxFit.cover),
                      ),
                    ),
                    ListTile(
                      leading: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Column(
                          children: [
                            Center(
                                child: Text(
                              '${eventController.events[index].month}',
                              style: TextStyle(color: Colors.white),
                            )),
                            Center(
                                child: Text(
                              '${eventController.events[index].dayMonth}',
                              style: TextStyle(color: Colors.white),
                            )),
                          ],
                        ),
                      ),
                      title: Text(
                        '${eventController.events[index].name}',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                      subtitle: Text('${eventController.events[index].fullDate}'),
                    ),

                
                  ],
                ),
              ),
            ),
          );
        },
      );
        }),
         )
    );
  }
}
