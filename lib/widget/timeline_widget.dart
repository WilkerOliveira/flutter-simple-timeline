import 'package:flutter/material.dart';
import 'package:simple_timeline/model/ItemModel.dart';

class TimelineWidget extends StatelessWidget {
  final ItemModel model;

  const TimelineWidget({Key key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          // -------------------
          Column(
            children: <Widget>[
              Container(
                width: 1,
              ),
              Container(
                width: 55,
                child: this.model.showDate
                    ? Column(
                        children: <Widget>[
                          Text(
                            this.model.dateDescription,
                            style: TextStyle(fontSize: 14),
                          ),
                          Text(
                            this.model.date,
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          Text(
                            this.model.yearDescription,
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      )
                    : Container(),
              ),
              Container(
                width: 1,
              ),
            ],
          ),
          // -------------------
          Container(
            width: 15,
            child: Column(
              children: <Widget>[
                Container(
                  width: 1,
                  height: 30,
                  color: Color(0xffe6e7f0),
                ),
                this.model.showIcon
                    ? Icon(
                        Icons.brightness_1,
                        size: this.model.showDate ? 14.0 : 10.0,
                        color:
                            this.model.showDate ? Colors.blue : Colors.blueGrey,
                      )
                    : Container(),
                Container(
                  width: 1,
                  height: 30,
                  color: Color(0xffe6e7f0),
                ),
              ],
            ),
          ),
          // -------------------
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        this.model.description,
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      Text(
                        this.model.amount,
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 18.0,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "See More",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // -------------------
        ],
      ),
    );
  }
}
