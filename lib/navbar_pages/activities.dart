import 'package:ease_the_error/activities/activities_widget/activity_grid_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Activities extends StatefulWidget {
  @override
  _ActivitiesState createState() => _ActivitiesState();
}

class _ActivitiesState extends State<Activities> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomRight,
                  colors: [Colors.black54, Colors.black87])),
          child: SingleChildScrollView(
            child: Column(children: [
              Container(
                padding: EdgeInsets.all(15),
                width: double.infinity,
                alignment: Alignment.topLeft,
                child: Text(
                  'Activities',
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                        color: Colors.white,
                        letterSpacing: .5,
                        fontSize: 36,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
              Container(width: double.infinity, child: ActivityGrid()),
              Container(height: 100),
            ]),
          ),
        ),
      ),
    );
  }
}
