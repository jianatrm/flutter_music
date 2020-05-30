import 'package:dio/dio.dart';
import 'package:flutter_music/src/utils/http.dart';
import 'dart:convert';

class Request{

  static  login() async{
    //String basicAuth ='Basic ' + base64Encode(utf8.encode(''));
    return await Http().post("/authentication/form",
    data: {'username':'admin','password':'123456'},
    options: new Options(
      headers: {"Authorization":"Basic ZWxlcGhhbnQxOiQyYSQxMCRzbHJ0REpTZmMuQks2SlZaYmoxZGkuRHRwaEhhNUhPdjBud3RTYjIuV0JWRG9xUm5wdDlWMg=="},
      contentType: "application/x-www-form-urlencoded",
    ));
  }
}