import 'dart:convert';

import 'package:corona_atual/classes/data.dart';
import 'package:http/http.dart' as http;

class CallApi{
final url = "https://covid-19-ao.herokuapp.com/api/general?fbclid=IwAR3XW29vuI4cRvMnmLf3Rp_4W_FIHqtrzdz8J4Hwgpz1kpCvDAKbXDz_gLU";

final  Map<String, String> headers = {
    "Content-Type": "application/json",
    "Accept": "application/json"
  };
Future<Data> dados() async {
var response = await http.get(url,headers: headers);
String dados = response.body;
Map map = json.decode(dados)["data"];
Data data = Data.fromJson(map);
return data;
}
}