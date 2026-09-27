import 'dart:convert';

import 'package:http_parser/http_parser.dart';
import 'package:http/http.dart' as http;
//import 'package:project/model/data_model.dart';

import '../model/data_model.dart';

class DataServices {
  String baseUrl = "https://api.restful-api.dev";
 Future<List<DataModel>> getInfo() async {
    var apiUrl = '/objects';
   http.Response res = await http.get(Uri.parse(baseUrl+apiUrl));
   try{
     if(res.statusCode == 200){
        List<dynamic> list = json.decode(res.body);
        print(list);
        return list.map((e) => DataModel.fromJason(e)).toList();
     }else{
       return <DataModel>[];
     }
   }catch(e){
     print(e);
     return <DataModel>[];
   }


  }
}