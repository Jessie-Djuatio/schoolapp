import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {

  static final storage = new FlutterSecureStorage();


  static void userProfileStorage({
    @required String id, 
    @required String token,
    @required String username,
    @required String email, 

  }) async {

    await storage.write(key: "id", value: id);
    await storage.write(key: "username", value: username);
    await storage.write(key: "email", value: email);
    await storage.write(key: "token", value: token);
    
  }

}