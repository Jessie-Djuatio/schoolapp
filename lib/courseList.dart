import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'components/courses.dart';
import 'components/courses_rep.dart';
import 'category_menu.dart';


class CourseList extends StatelessWidget {


  List<Card> _buildCards(BuildContext context){
    List<Courses> courses = CoursesRep.loadCourses(Category.all);
    if (courses == null || courses.isEmpty){
      return const <Card>[];
    }

    final ThemeData theme = Theme.of(context);
    return courses.map((course) {
      return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 3.0,
        margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
        child: Container(
          margin: EdgeInsets.all(8.0),
          //width: 10,
          height: 60,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

              Text(

                course == null ? '' : course.name,
                style: theme.textTheme.button,
                textAlign: TextAlign.center,
                softWrap: false,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,

              ),
            SizedBox(height: 3.0),

              Text(
                course == null ? '' :course.code,
                style: theme.textTheme.caption,
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      );
    }).toList();
  }

  final Category category;
  CourseList({this.category: Category.all});


  @override
  Widget build(BuildContext context){

    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          title: Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[

              Text('REGISTER COURSES', textAlign: TextAlign.end),
            ],
          ),
          backgroundColor: Colors.green,
          elevation: 5.0,
          leading: Container(),

        ),


        body: ListView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
          children: _buildCards(context),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.library_books),
      onPressed: () {
       // Navigator.push(context,MaterialPageRoute(
         //   builder: (context)=> RegisteredCourses()
        //));
        print("pressed it");
      },
    ),

    );
  }

}

