import 'package:http/http.dart' as http;
import 'package:async/async.dart';
import 'dart:convert';

var request = Uri.parse('https://economia.awesomeapi.com.br/last/USD-BRL,EUR-BRL,BTC-BRL');

Future<Map> getData() async{
  http.Response response = await http.get(request);
  return json.decode(response.body);
}