import 'package:flutter/material.dart';
import 'package:nearme/helper/ui_helper.dart';
import 'package:nearme/models/person.dart';

class PointLocationListItem extends StatelessWidget {
  Person person = Person();
  final Function changeGoogleMapMarkercamera;

  PointLocationListItem({this.person, this.changeGoogleMapMarkercamera});

  @override
  Widget build(BuildContext context) {
    return  Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Container(         
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  "assets/avatar.png",
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: (screenHeight * 0.30) * 2 / 7,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        person.name,
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        person.address,
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        person.mobile,
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }
}
