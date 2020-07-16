import 'package:flutter/material.dart';

enum Category { all, computer, electrical}

class Courses {
  const Courses({
    @required this.category,
    @required this.id,
    @required this.name,
    @required this.code,

  }) :  assert(category != null),
        assert(id != null),
        assert(name != null),
        assert(code != null);


  final Category category;
  final int id;
  final String name;
  final String code;

  @override
  String toString() => "$name (id=$id)";

}