import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:schoolapp/utils/endpoints.dart';
import 'package:dio/dio.dart';


class AuthService {
  static BaseOptions options = BaseOptions(
      baseUrl: Endpoints.apiUrl,
      responseType: ResponseType.plain,
      contentType: "application/x-www-form-urlencoded",
      validateStatus: (code) {
        if (code >= 200) {
          return true;
        }
        return false;
      }
  );

  static Dio dio = Dio(options);

  //Sign In service

  static dynamic login({ @required String username, @required String password }) async {

    BaseOptions options = BaseOptions(
        baseUrl: Endpoints.apiUrl,
        responseType: ResponseType.plain,
        contentType: "application/json",
        validateStatus: (code) {
          if (code >= 200) {
            return true;
          }
          return false;
        }
    );

    Dio dioAuth = Dio(options);

    var uri = Endpoints.login;

    try {
      Response response = await dioAuth.post(uri, data: {
        "username": username,
        "password": password,
      });

      if (response.statusCode == 200) {return json.decode(response.data);}
      else if (response.statusCode == 400) {return "400";}
      else {return 'error';}

    } on DioError catch (exception) {
      if (exception == null ||
          exception.toString().contains('SocketException')) {
        return "Network Error";
      } else if (exception.type == DioErrorType.RECEIVE_TIMEOUT ||
          exception.type == DioErrorType.CONNECT_TIMEOUT) {
        return "Time Out";
      } else {
        return "Unknown Error";
      }
    }
  }

}

