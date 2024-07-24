import 'dart:convert';
import 'dart:developer';

// import 'package:bloc_todo_api/bloc_api/bloc_bloc.dart';
import 'package:bloc_todo_api/bloc_api/model_class.dart';
// import 'package:block/api/api_class.dart';
import 'package:dio/dio.dart';

class Apiservice {
 static Dio dio = Dio(BaseOptions(baseUrl: 'https://api.publicapis.org/'));
  static Future<Maxvalue?> getpost() async {
    Response response = await dio.get('entries');
    try {
      if (response.statusCode == 200) {
        String json = jsonEncode(response.data);
        return maxvalueFromJson(json);
      }
    } on DioException catch (e) {
      log('error:$e');
    }
    return null;
  }
}
