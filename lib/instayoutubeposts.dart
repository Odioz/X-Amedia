import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:xamedia/apikey.dart';

class InstaYoutubePosts{

Future<String> instaPost(String insUrl) async {
  var response = await http.get('https://instagram.com/' + insUrl + '/?__a=1');
  // print('https://instagram.com/' + insUrl + '/?__a=1');
  if (response.statusCode == 200) {
    var responseBody = json.decode(response.body);
    String sss = checkString(responseBody['graphql']['user']
        ['edge_owner_to_timeline_media']['count']);
    //print(sss);
    return sss;
  } else {
    throw Exception('Failed to Load Data');
  }
}

Future<String> youtbPost(String yotbUrl) async {
  var response = await http.get(
      "https://youtube.googleapis.com/youtube/v3/search?part=snippet&channelId=" +
          yotbUrl +
          myapikey,
      headers: {"Accept": "application/json"});
  // print("https://youtube.googleapis.com/youtube/v3/search?part=snippet&channelId=" + yotbUrl);
  if (response.statusCode == 200) {
    var responseBody = json.decode(response.body);
    String ss = checkString(responseBody["pageInfo"]["totalResults"]);
    //print(ss);
    return ss;
  } else {
    throw Exception('Failed to Load Data');
  }
}

static String checkString(dynamic value) {
  if (value is int) {
    return value.toString();
  } else {
    return value;
  }
}
}