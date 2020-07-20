import 'package:flutter/material.dart';
import 'package:simple_timeline/util/timeline_utils.dart';
import 'package:simple_timeline/widget/timeline_widget.dart';

class TimelineScreen extends StatefulWidget {
  @override
  _TimelineScreenState createState() => _TimelineScreenState();
}

class _TimelineScreenState extends State<TimelineScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Timeline"),
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            margin: EdgeInsets.fromLTRB(16, 0, 16, 16),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              itemCount: TimelineUtils.getItems().length,
              itemBuilder: (context, index) {
                return TimelineWidget(
                  model: TimelineUtils.getItems()[index],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
