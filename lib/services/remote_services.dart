
import 'package:event_app/models/products.dart';
import 'package:http/http.dart' as http;

class RemoteServices {
  static var client = http.Client();

  static Future<List<Welcome>> fetchData() async{
    var response = await client.get('https://projects.deelesisuanu.com/elliot-events/eventData');
    if(response.statusCode == 200){
      var jsonString = response.body;
      return welcomeFromJson(jsonString);
    }else {
      return null;
    }
  }
}
