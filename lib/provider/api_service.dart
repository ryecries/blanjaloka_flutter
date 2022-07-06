import 'package:blanjaloka_flutter/provider/global.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:blanjaloka_flutter/models/login_model.dart';

class APIService{
  Future<LoginResponeModel> login(LoginRequestModel loginRequestModel) async{
    String url="https://reqres.in/api/login";
    final response = await http.post(Uri.parse(url),body:loginRequestModel.toJson());
    if(response.statusCode==200 || response.statusCode==400){
      return LoginResponeModel.fromJson(json.decode(response.body));
    }else{
      throw Exception('failed to load data');
    }
  }

  static Future<http.Response> register(
      String name, String email, String password, String telepon) async {
    Map data = {
      "nama_customer": name,
      "email_customer": email,
      "password": password,
      "nomor_telepon": telepon,
    };
    var body = json.encode(data);
    var url = Uri.parse(baseURL + 'customer/register');
    http.Response response = await http.post(
      url,
      headers: headers,
      body: body,
    );
    print(response.body);
    return response;
  }
}