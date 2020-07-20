import 'package:flutter/material.dart';
import 'package:simple_timeline/screens/timeline_screen.dart';

class TimelineApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Timeline',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TimelineScreen(),
    );
  }
}
