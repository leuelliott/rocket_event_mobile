import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:event_app/controllers/email_controller.dart';
import 'package:event_app/default_button1.dart';
import 'package:event_app/screens/bottomnav/bottomnav.dart';
import 'package:event_app/screens/email/email.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:io';
import 'dart:async';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_summernote/flutter_summernote.dart';

class ManageEvent extends StatefulWidget {
  @override
  _ManageEventState createState() => _ManageEventState();
}

DateTime selectedDate = DateTime.now();

class _ManageEventState extends State<ManageEvent> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController timeController = TextEditingController();

//  Future<File> file;
//   String status = '';
  String base64Image;
//   File tmpFile;
//   String errMessage = 'Error Uploading Image';

  Dio dio = new Dio();
  Future postData() async {
    final String pathUrl =
        'https://projects.deelesisuanu.com/elliot-events/createEvent';

    dynamic data = {
      'eventDescription': summernote,
      'eventName': nameController.text,
      'eventDateTime': timeController.text,
      'def': 'block',
      'feat_icon': '',
      'fileName': fileName,
      'baseImage': base64Image,
    };

    var response = await dio.post(
      pathUrl,
      data: data,
    );
    if (response.statusCode == 200) {
      return response.data;
      // ignore: dead_code
      Get.snackbar('Success', response.statusMessage,
          snackPosition: SnackPosition.BOTTOM, colorText: Colors.green);
    } else {
      Get.snackbar('Error', response.statusMessage,
          snackPosition: SnackPosition.BOTTOM, colorText: Colors.red);
    }
  }

  File _image;
  String summernote;
  String fileName;

  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        base64Image = base64Encode(_image.readAsBytesSync());
        fileName = _image.path.split('/').last;

        //print(_image);
      } else {
        print('No image selected.');
      }
    });
  }

  GlobalKey<FlutterSummernoteState> _keyEditor = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manage Events'),
        // actions: [
        //   IconButton(
        //     icon: Icon(Icons.list),
        //     onPressed: () {
        //       Get.to(EmailXScreen());
        //     },
        //   )
        // ]
      ),
      body: Container(
          child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: Text(
                  'Event Name',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blueGrey.withOpacity(0.2),
                  ),
                  child: TextField(
                    controller: nameController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      border: OutlineInputBorder(
                          //gapPadding: ,
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.zero),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.zero),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.zero),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: Text(
                  'Event Date / Time',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blueGrey.withOpacity(0.2),
                  ),
                  child: TextField(
                    controller: timeController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      border: OutlineInputBorder(
                          //gapPadding: ,
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.zero),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.zero),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.zero),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Container(
              //     child: Column(
              //   mainAxisSize: MainAxisSize.min,
              //   children: <Widget>[
              //     Text(
              //       "${selectedDate.toLocal()}".split(' ')[0],
              //       style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              //     ),
              //     SizedBox(
              //       height: 20.0,
              //     ),
              //     RaisedButton(
              //       onPressed: () => _selectDate(context), // Refer step 3
              //       child: Text(
              //         'Select date',
              //         style: TextStyle(
              //             color: Colors.white, fontWeight: FontWeight.bold),
              //       ),
              //       color: Colors.blue,
              //     ),
              //   ],
              // )),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color: Colors.grey,
                        width: 1,
                      ),
                      top: BorderSide(
                        color: Colors.grey,
                        width: 1,
                      ),
                      right: BorderSide(
                        color: Colors.grey,
                        width: 1,
                      ),
                      bottom: BorderSide(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                  ),
                  height: 300,
                  width: double.infinity,
                  child: Center(
                    child: _image == null
                        ? Text('No image selected.')
                        : Image.file(_image),
                  ),
                ),
              ),
              MaterialButton(
                color: Colors.blue,
                child: Text(
                  'Add Photo',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: getImage,
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20.0,
                  left: 15,
                  right: 15,
                ),
                child: FlutterSummernote(
                  height: 300,
                  hint: "Your text here...",
                  key: _keyEditor,
                  hasAttachment: false,
                  customToolbar: """
          [
            ['style', ['bold', 'italic', 'underline', 'clear']],
            ['font', ['strikethrough', 'superscript', 'subscript']],
            ['insert', ['link', 'table', 'hr']]
          ]
        """,
                ),
              ),
              SizedBox(height: 20),
              MaterialButton(
                  color: Colors.blue,
                  child: Container(
                    width: 300,
                    height: 50,
                    child: Center(
                      child: Text(
                        'Post',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  // onPressed: () async {

                  // },
                  onPressed: () async {
                    final value = await _keyEditor.currentState.getText();
                    //print(value);
                    setState(() {
                      summernote = value;
                    });
                    Get.snackbar(
                      '',
                      'Posting',
                      showProgressIndicator: true,
                      snackPosition: SnackPosition.BOTTOM,
                      duration: Duration(seconds: 1),
                    );

                    print('Posting data....');

                    await postData().then((value) {
                      print(value);
                      final message = json.decode(value);
                      // if()
                      Get.snackbar('', message["text"],
                          snackPosition: SnackPosition.BOTTOM);
                      if (message["status"] || message["status"] == "true") {
                        Future.delayed(Duration(seconds: 3), () {
                          // 5s over, navigate to a new page
                          CircularProgressIndicator();
                          Get.offAll(Home());
                        });

                        print(message);
                      }
                    });
                  }),
              SizedBox(height: 20),
            ],
          ),
        ),
      )),
    );
  }

  _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectedDate, // Refer step 1
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }
}
