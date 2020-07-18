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
    @required String fullName,
    @required String faculty,
    @required String department,
    @required String matricule,
    @required String address,
    @required String dob,
    @required String level,
  }) async {
    await storage.write(key: "id", value: id);
    await storage.write(key: "username", value: username);
    await storage.write(key: "email", value: email);
    await storage.write(key: "token", value: token);
    await storage.write(key: "fullName", value: fullName);
    await storage.write(key: "faculty", value: faculty);
    await storage.write(key: "department", value: department);
    await storage.write(key: "matricule", value: matricule);
    await storage.write(key: "address", value: address);
    await storage.write(key: "dob", value: dob);
    await storage.write(key: "level", value: level);
    
  }

}