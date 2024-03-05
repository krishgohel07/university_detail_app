import 'dart:convert';

import 'package:university_details/module/model/datamodel.dart';
import 'package:http/http.dart' as http;

class APIHelper {
  APIHelper._();

  static final APIHelper apiHelper = APIHelper._();
  List<Datamodel> alldata = [];

  Future<void> fetchdata() async {
    String api = "http://universities.hipolabs.com/search?country=India";
    http.Response response = await http.get(Uri.parse(api));
    if (response.statusCode == 200) {
      String data = response.body;
      List mapdata = jsonDecode(data);
      for(int i=0;i<mapdata.length;i++){
        List all=mapdata[i]['web_pages'];
      }
      alldata = mapdata
          .map((e) => Datamodel(
              name: e['name'],
              country: e['country'],
              twocode: e['alpha_two_code'],
              state: e['state-province']))
          .toList();
      print(mapdata);
    }
  }
}
